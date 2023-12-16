
struct Params {
  tau: f32,
}

@group(0) @binding(1) var<uniform> params: Params;

#import lagopus::perspective

#import lagopus::simplex

// main

struct VertexOut {
  @builtin(position) position: vec4f,
  @location(0) original: vec3f,
};

@vertex
fn vertex_main(
  @location(0) position: vec2f,
) -> VertexOut {
  var output: VertexOut;
  let u = position.x;
  let v = position.y;

  // hyperbolic helicoid math, thanks to https://www.geogebra.org/m/ydufgFps
  let tau = params.tau;
  let d = 1.0 / (1.0 + cosh(u) * cosh(v));
  let x = sinh(v) * cos(tau * u) * d;
  let y = sinh(v) * sin(tau * u) * d;
  let z = cosh(v) * sinh(u) * d;

  let p1 = vec3(x, y, z) * 200.0;
  let p: vec3<f32> = transform_perspective(p1.xyz).point_position;
  let scale: f32 = 0.002;
  output.position = vec4(p[0] * scale, p[1] * scale, p[2] * scale, 1.0);
  return output;
}

const limit: f32 = 0.9;

@fragment
fn fragment_main(vtx_out: VertexOut) -> @location(0) vec4f {
  let l = 0.3;
  return vec4(l, l, l, 0.8);
}