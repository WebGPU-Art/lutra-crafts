struct UBO {
  cone_back_scale: f32,
  viewport_ratio: f32,
  look_distance: f32,
  forward: vec3<f32>,
  // direction up overhead, better unit vector
  upward: vec3<f32>,
  rightward: vec3<f32>,
  camera_position: vec3<f32>,
  _pad: f32,

  tau: f32,
};

@group(0) @binding(0)
var<uniform> uniforms: UBO;

{{perspective}}

{{simplex}}

// main

struct VertexOut {
  @builtin(position) position : vec4<f32>,
  @location(0) original: vec3<f32>,
};

@vertex
fn vertex_main(
  @location(0) position: vec2<f32>,
) -> VertexOut {
  var output: VertexOut;
  let u = position.x;
  let v = position.y;

  // hyperbolic helicoid math, thanks to https://www.geogebra.org/m/ydufgFps
  let tau = uniforms.tau;
  let d = 1 / (1 + cosh(u) * cosh(v));
  let x = sinh(v) * cos(tau * u) * d;
  let y = sinh(v) * sin(tau * u) * d;
  let z = cosh(v) * sinh(u) * d;

  let p1 = vec3(x, y, z) * 200.0;
  let p = transform_perspective(p1.xyz).point_position;
  let scale: f32 = 0.002;
  output.position = vec4(p[0]*scale, p[1]*scale, p[2]*scale, 1.0);
  return output;
}

const limit: f32 = 0.9;

@fragment
fn fragment_main(vtx_out: VertexOut) -> @location(0) vec4<f32> {
  let l = 0.1;
  return vec4(l, l, l, 0.8);
}