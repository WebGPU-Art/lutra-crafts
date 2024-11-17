
#import lagopus::perspective

// #import // lagopus::colors


struct ParticleInfo {
  position: vec3f,
  velocity: vec3f,
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

  output.particles[index].position = input_item.position + 0.002 * input_item.velocity;
  // TODO
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
  let base = input.particles[picker_idx].position;

  var output: VertexOut;

  var p1 = position + base;

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

  let result = transform_perspective(p1.xyz);
  let p = result.point_position;
  let scale: f32 = 0.002;
  output.position = vec4(p[0] * scale, p[1] * scale, p[2] * scale, 1.0);
  output.distance = result.r;
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
  return vec4f(1., 1., 1., 0.7);
}
