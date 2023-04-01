struct UBO {
  coneBackScale: f32,
  viewportRatio: f32,
  lookDistance: f32,
  forward: vec3<f32>,
  // direction up overhead, better unit vector
  upward: vec3<f32>,
  rightward: vec3<f32>,
  cameraPosition: vec3<f32>,
};

@group(0) @binding(0)
var<uniform> uniforms: UBO;

{{perspective}}

{{rand}}

// main

struct VertexOut {
  @builtin(position) position : vec4<f32>,
  @location(0) original: vec3<f32>,
  @location(1) metrics: vec3<f32>,
  @location(2) seed: f32,
};

@vertex
fn vertex_main(
  @location(0) position: vec3<f32>,
  @location(1) metrics: vec3<f32>,
  @location(2) idx: u32,
) -> VertexOut {
  var output: VertexOut;
  let p1 = position;
  let p = transform_perspective(p1.xyz).point_position;
  let scale: f32 = 0.002;
  output.position = vec4(p[0]*scale, p[1]*scale, p[2]*scale, 1.0);
  output.original = position;
  output.metrics = metrics;
  output.seed = f32(idx);
  // output.position = position;
  // output.h = 0.0;
  return output;
}


@fragment
fn fragment_main(out: VertexOut) -> @location(0) vec4<f32> {
  let metrics = out.metrics;
  let p = metrics;
  let x_far = abs(metrics.x) > 0.9;
  let y_far = abs(metrics.y) > 0.9;
  let z_far = abs(metrics.z) > 0.9;
  let far = (x_far && y_far) || (y_far && z_far) || (z_far && x_far);
  if (far) {
    return vec4<f32>(0.0, 0.0, 0.0, 1.0);
  }

  var face: u32 = 0;
  if (metrics.y < -0.9) {
    // face = 0
  } else if (metrics.z > 0.9) {
    face = 1;
  } else if (metrics.x > 0.9) {
    face = 2;
  } else if (metrics.z < -0.9) {
    face = 3;
  } else if (metrics.x < -0.9) {
    face = 4;
  } else if (metrics.y > 0.9) {
    face = 5;
  }
  let a = f32(face) + out.seed + 0.88872;
  let b = rand(a);

  var color: vec4<f32> = vec4<f32>(0.0, 0.0, 0.0, 1.0);
  if (b < 0.25) {
    color = vec4<f32>(1.0, 0.0, 0.0, 1.0);
  } else if (b < 0.50) {
    color = vec4<f32>(0.0, 0.0, 1.0, 1.0);
  } else if (b < 0.75) {
    color = vec4<f32>(1.0, 1.0, 0.0, 1.0);
  } else if (b < 0.60) {
    color = vec4<f32>(1.0, 1.0, 0.0, 1.0);
  } else {
    color = vec4<f32>(1.0, 1.0, 1.0, 1.0);
  }

  return color;
}
