
#import lagopus::perspective

#import lagopus::colors

// main

struct VertexOut {
  @builtin(position) position: vec4f,
  @location(0) original: vec3f,
  @location(2) color: vec3f,
};

@vertex
fn vertex_main(
  @location(0) position: vec3f,
  @location(1) brush: u32,
  @location(2) direction: vec3f,
  @location(3) width: f32,
) -> VertexOut {
  var output: VertexOut;

  var p1 = position;

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

  let p = transform_perspective(p1.xyz).point_position;
  let scale: f32 = 0.002;
  output.position = vec4(p[0] * scale, p[1] * scale, p[2] * scale, 1.0);
  output.original = position;
  output.color = hsl(0.14, 1.0, 0.2 + 0.8 * 0.8);

  return output;
}

const middle: f32 = 50.0;
const limit: f32 = 48.0;

@fragment
fn fragment_main(vtx_out: VertexOut) -> @location(0) vec4f {
  return vec4(0.6, 0.1, 0.1, 0.4);
  // let l = length(vec3f(vtx_out.original.xz, vtx_out.original.y + 100));
  // return vec4(0.7, 0.6, 0.5, pow(l, 1.8) * 0.00003);
}
