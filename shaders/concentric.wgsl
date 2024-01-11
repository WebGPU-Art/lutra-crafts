
#import lagopus::perspective

#import lagopus::colors

#import lagopus::rand

struct Params {
  time: f32,
  _p1: f32,
  _p2: f32,
  _p3: f32,
}

@group(0) @binding(1) var<uniform> params: Params;

// main

struct VertexOut {
  @builtin(position) position: vec4f,
  @location(1) width: f32,
  @location(2) r: f32,
};

@vertex
fn vertex_main(
  @location(0) position: vec3f,
  @location(1) brush: u32,
  @location(2) direction: vec3f,
  @location(3) width: f32,
  @location(4) mark: f32,
) -> VertexOut {
  var output: VertexOut;

  var p1 = position;
  let x = position.x;

  // set rotation based on x
  let rot = params.time * 1. / (2. + pow(mark, 0.2));
  let x_x = x * cos(rot);
  let x_z = x * sin(rot);
  p1.x = x_x;
  p1.z = x_z;

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

  let ret = transform_perspective(p1.xyz);
  let p = ret.point_position;
  let scale: f32 = 0.002;
  output.position = vec4(p[0] * scale, p[1] * scale, p[2] * scale, 1.0);
  output.width = width;
  output.r = ret.r;

  return output;
}

@fragment
fn fragment_main(vtx_out: VertexOut) -> @location(0) vec4f {
  // return vec4f(vtx_out.color, 1.0);
  let color = hsl(0.1, 1.0, 0.60);
  return vec4f(color, 1.2 - vtx_out.r * 0.02);
  // return vec4f(1.0, 0.8, 0.6, 1.);
}
