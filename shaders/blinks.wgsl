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
};

@group(0) @binding(0)
var<uniform> uniforms: UBO;

{{perspective}}

{{colors}}

// main

struct VertexOut {
  @builtin(position) position: vec4f,
  @location(0) original: vec3f,
  @location(1) color: vec3f,
  @location(2) brightness: f32,
};

@vertex
fn vertex_main(
  @location(0) position: vec3f,
  @location(1) direction: vec3f,
) -> VertexOut {
  var output: VertexOut;

  var p1 = position;

  let brightness = dot(normalize(direction), uniforms.forward);
  let hue = dot(direction, uniforms.upward);

  let p: vec3<f32> = transform_perspective(p1.xyz).point_position;
  let scale: f32 = 0.002;
  output.position = vec4(p[0] * scale, p[1] * scale, p[2] * scale, 1.0);
  output.original = position;
  output.color = hsl(fract(hue), 1.0, 0.8);
  output.brightness = abs(pow(brightness, 200));

  return output;
}

const middle: f32 = 50.0;
const limit: f32 = 48.0;

@fragment
fn fragment_main(vtx_out: VertexOut) -> @location(0) vec4f {
  let b = max(0.04, vtx_out.brightness);
  return vec4(vtx_out.color, b);
  // return vec4(1.0, 1.0, 1.0, b);
}
