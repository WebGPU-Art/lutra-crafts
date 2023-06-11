
struct UBO {
  cone_back_scale: f32,
  viewport_ratio: f32,
  look_distance: f32,
  scale: f32,
  forward: vec3f,
  // direction up overhead, better unit vector
  upward: vec3f,
  rightward: vec3f,
  camera_position: vec3f,
  _pad: u32,

  // custom
  color: vec3f,
};

@group(0) @binding(0)
var<uniform> uniforms: UBO;

{{perspective}}

{{rand}}

{{colors}}

// main

struct VertexOut {
  @builtin(position) position: vec4f,
  @location(0) idx: f32,
  @location(1) color: vec3f,
};

// const PI = 3.14159265358979323846264338327950288;

@vertex
fn vertex_main(
  @location(0) position: vec3f,
  @location(1) idx: u32,
) -> VertexOut {
  var output: VertexOut;
  var theta1 = atan2(position.y, 160);
  theta1 = pow(theta1, 7.);
  let theta2 = atan2(position.x, position.z);
  let a = noise2(vec2f(theta1, theta2) * 40.0);
  let a2 = noise2(vec2f(theta1, theta2) * 2.0);
  let b = max(1, (0.9 + a2 * 0.1 + a * 0.06));
  let p1 = position * b;
  let p = transform_perspective(p1.xyz).point_position;
  let scale: f32 = 0.002;
  output.position = vec4(p[0]*scale, p[1]*scale, p[2]*scale, 1.0);
  let l = length(p1);
  output.idx = f32(idx);
  if (b <= 1.0) {
    output.color = vec3f(0.6, 0.6, 0.9);
  } else if (b > 1.03) {
    output.color = vec3f(1 , 1, 1);
  } else {
    output.color = vec3f(0.6, 0.7, 0.6);
  }
  return output;
}

@fragment
fn fragment_main(vtx_out: VertexOut) -> @location(0) vec4f {
  // let a = rand(vtx_out.idx);
  // let color = hsl(vtx_out.color.x, vtx_out.color.y, vtx_out.color.z + a*0.04);
  // return vec4(color.xyz, 1.0);
  return vec4f(vtx_out.color, 1.);
}
