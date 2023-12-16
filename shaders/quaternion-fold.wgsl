
#import lagopus::perspective

#import lagopus::colors

// main

struct VertexOut {
  @builtin(position) position: vec4f,
}

@vertex
fn vertex_main(
  @location(0) position: vec3f,
) -> VertexOut {
  var output: VertexOut;

  var p1 = position;

  let p = transform_perspective(p1.xyz).point_position;
  let scale: f32 = 0.002;
  output.position = vec4(p[0] * scale, p[1] * scale, p[2] * scale, 1.0);
  return output;
}

const middle: f32 = 50.0;
const limit: f32 = 48.0;

@fragment
fn fragment_main(vtx_out: VertexOut) -> @location(0) vec4f {
  return vec4(0.99, 0.99, 0., 0.6);
  // let l = length(vec3f(vtx_out.original.xz, vtx_out.original.y + 100));
  // return vec4(0.7, 0.6, 0.5, pow(l, 1.8) * 0.00003);
}
