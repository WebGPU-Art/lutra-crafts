
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
  chromatism: f32
};

@group(0) @binding(0)
var<uniform> uniforms: UBO;

{{perspective}}

{{rand}}

{{colors}}

{{rotation}}

// main

struct VertexOut {
  @builtin(position) position: vec4f,
  @location(0) idx: f32,
  @location(1) color: vec3f,
  @location(2) chromatism: f32,
  @location(3) d: f32,
};

// const PI = 3.14159265358979323846264338327950288;

@vertex
fn vertex_main(
  @location(0) position: vec3f,
  @location(1) idx: u32,
) -> VertexOut {
  var output: VertexOut;

  let y = position.y;
  let ya = atan2(y, 160.);
  let yb = tan(ya * 2.0);
  let d = length(position);
  let p1 = rotate_around(position, vec3(0,1,0), 4.0 * yb);
  let p2 = rotate_around(p1, vec3(1,0,0), 1.4 * ya);

  let p = transform_perspective(p2.xyz).point_position;
  let scale: f32 = 0.002;
  output.position = vec4f(p[0]*scale, p[1]*scale, p[2]*scale, 1.0);
  output.idx = f32(idx);
  output.color = uniforms.color;
  output.chromatism = uniforms.chromatism;
  output.d = d;
  return output;
}

@fragment
fn fragment_main(vtx_out: VertexOut) -> @location(0) vec4f {
  // let a = rand(vtx_out.idx);
  if (vtx_out.d > 118.) {
    return vec4(0.99, 0.88, 0.2, 1.0);
  }
  let color:vec3f = hsl(vtx_out.color.x, vtx_out.color.y, vtx_out.color.z - vtx_out.d * 0.0024);
  return vec4(color.xyz, 1.0);
}
