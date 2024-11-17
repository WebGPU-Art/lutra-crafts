
#import lagopus::perspective

#import lagopus::rotation

// #import // lagopus::colors

struct Params {
  // custom
  time: f32,
}

@group(0) @binding(1) var<uniform> params: Params;

struct ParticleInfo {
  position: vec3f,
  velocity: vec3f,
  axis: vec3f,
}

struct Particles {
  particles: array<ParticleInfo>,
};

@group(1) @binding(0) var<storage, read> input: Particles;
@group(1) @binding(1) var<storage, read_write> output: Particles;

@compute @workgroup_size(64)
fn main(@builtin(global_invocation_id) GlobalInvocationID: vec3<u32>) {
  var index = GlobalInvocationID.x;
  let input_item = input.particles[index];

  var next_pos = input_item.position + 0.0003 * input_item.velocity + vec3f(0.02, -0.08, 0.);
  if next_pos.y < -100. {
    next_pos.y = 100.;
  }
  if next_pos.y > 100. {
    next_pos.y = -100.;
  }
  if next_pos.x < -320. {
    next_pos.x = 320.;
  }
  if next_pos.x > 320. {
    next_pos.x = -320.;
  }
  if next_pos.z < -320. {
    next_pos.z = 320.;
  }
  if next_pos.z > 320. {
    next_pos.z = -320.;
  }
  output.particles[index].position = next_pos;
}


// main

struct VertexOut {
  @builtin(position) position: vec4f,
  @location(0) distance: f32,
  // @location(1) mark: f32,
};

@vertex
fn vertex_main(
  @location(0) position: vec3f,
  @location(1) brush: u32,
  @location(2) direction: vec3f,
  @location(3) width: f32,
  @location(4) picker: f32,
) -> VertexOut {

  let picker_idx = u32(picker);
  let base_info = input.particles[picker_idx];
  let base = base_info.position;


  var p1 = rotate_around(position, base_info.axis, 0.022 * params.time);

  var next = cross(direction, uniforms.forward);
  if length(next) < 0.0001 {
    // if parallel, use leftward
    next = -next;
  }
  let brush_direction = normalize(next);
  if brush == 1u {
    p1 += brush_direction * width * 0.5;
  } else {
    p1 -= brush_direction * width * 0.5;
  }
  let pos = base + p1;

  let result = transform_perspective(pos * 4.);
  let p = result.point_position;
  let scale: f32 = 0.002;

  let output = VertexOut(
    vec4(p[0] * scale, p[1] * scale, p[2] * scale, 1.0),
    result.r
  );
  // output.mark = mark;

  return output;
}

const middle: f32 = 50.0;
const limit: f32 = 48.0;

@fragment
fn fragment_main(vtx_out: VertexOut) -> @location(0) vec4f {
  // return vec4f(vtx_out.color, 1.0);
  // let color = hsl(fract(0.01 + fract(vtx_out.mark * 0.17)), 0.7, 0.6);
  // return vec4f(color, max(0.16, 1.0 - vtx_out.distance * 0.6));
  return vec4f(0.9, 0.9, 0.94, 0.6);
}
