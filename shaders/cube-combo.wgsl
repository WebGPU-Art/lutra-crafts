

#import lagopus::perspective

#import lagopus::rand

// main

struct VertexOut {
  @builtin(position) position: vec4f,
  @location(0) original: vec3f,
  @location(1) metrics: vec3f,
  @location(2) seed: f32,
  @location(3) offsets: vec3f,
}

@vertex
fn vertex_main(
  @location(0) position: vec3f,
  @location(1) metrics: vec3f,
  @location(2) idx: u32,
  @location(3) offsets: vec3f,
) -> VertexOut {
  var output: VertexOut;
  let p1 = position;
  let p = transform_perspective(p1.xyz).point_position;
  let scale: f32 = 0.002;
  output.position = vec4(p[0] * scale, p[1] * scale, p[2] * scale, 1.0);
  output.original = position;
  output.metrics = metrics;
  output.seed = f32(idx);
  output.offsets = offsets;
  // output.position = position;
  // output.h = 0.0;
  return output;
}


@fragment
fn fragment_main(out: VertexOut) -> @location(0) vec4f {
  let metrics = out.metrics;
  let p = metrics;
  let border = 8.0;
  let x_far = abs((1. - abs(metrics.x)) * out.offsets.x) < border;
  let y_far = abs((1. - abs(metrics.y)) * out.offsets.y) < border;
  let z_far = abs((1. - abs(metrics.z)) * out.offsets.z) < border;
  let far = (x_far && y_far) || (y_far && z_far) || (z_far && x_far);
  if far {
    return vec4f(0.0, 0.0, 0.0, 1.0);
  }

  var face: u32 = 0u;
  if metrics.y < -0.9 {
    // face = 0u;
  } else if metrics.z > 0.9 {
    face = 1u;
  } else if metrics.x > 0.9 {
    face = 2u;
  } else if metrics.z < -0.9 {
    face = 3u;
  } else if metrics.x < -0.9 {
    face = 4u;
  } else if metrics.y > 0.9 {
    face = 5u;
  }
  let a = f32(face) + out.seed + 0.88872;
  let b = rand(a);

  var color: vec4f = vec4f(0.0, 0.0, 0.0, 1.0);
  if b < 0.25 {
    color = vec4f(1.0, 0.0, 0.0, 1.0);
  } else if b < 0.50 {
    color = vec4f(0.0, 0.0, 1.0, 1.0);
  } else if b < 0.75 {
    color = vec4f(1.0, 1.0, 0.0, 1.0);
  } else if b < 0.60 {
    color = vec4f(1.0, 1.0, 0.0, 1.0);
  } else {
    color = vec4f(1.0, 1.0, 1.0, 1.0);
  }

  return color;
}
