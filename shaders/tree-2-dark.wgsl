
#import lagopus::perspective

struct Params {
  time: f32,
}

@group(0) @binding(1) var<uniform> params: Params;

// main

struct VertexOut {
  @builtin(position) position: vec4f,
};

@vertex
fn vertex_main(
  @location(0) position: vec3f,
) -> VertexOut {
  var output: VertexOut;

  var p1 = position;

  let p = transform_perspective(p1.xyz).point_position;
  let scale = 0.002;
  output.position = vec4f(p * scale, 1.0);

  return output;
}

@fragment
fn fragment_main(vtx_out: VertexOut) -> @location(0) vec4f {
  return vec4f(0.0, 0.1, 0.0, 1.);
}
