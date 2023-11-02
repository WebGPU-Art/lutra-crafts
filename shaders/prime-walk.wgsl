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
  _pad: f32,
  progress: f32,
  p1: f32,
  p2: f32,
  p3: f32,
};

@group(0) @binding(0) var<uniform> uniforms: UBO;

{{perspective}}

{{colors}}

// main

struct VertexOut {
  @builtin(position) position: vec4f,
  @location(0) bold: f32,
};

@vertex
fn vertex_main(
  @location(0) position: vec3f,
  @location(1) brush: u32,
  @location(2) direction: vec3f,
  @location(3) width: f32,
  @location(4) mark: f32,
) -> VertexOut {
  var output: VertexOut;

  var p1 = position;

  var w_scale = 0.5;
  if mark > abs(uniforms.progress) {
    w_scale = 0.;
  }
  if abs(mark - abs(uniforms.progress)) < 20. {
    w_scale = 2.;
  }

  var next = cross(direction, uniforms.forward);
  if length(next) < 0.0001 {
    // if parallel, use leftward
    next = -next;
  }
  let brush_direction = normalize(next);
  if brush == 1 {
    p1 += brush_direction * width * 0.5 * w_scale;
  } else {
    p1 -= brush_direction * width * 0.5 * w_scale;
  }

  let p = transform_perspective(p1.xyz).point_position;
  let scale: f32 = 0.002;
  output.position = vec4(p[0] * scale, p[1] * scale, p[2] * scale, 1.0);
  output.bold = w_scale;

  return output;
}

const middle: f32 = 50.0;
const limit: f32 = 48.0;

@fragment
fn fragment_main(vtx_out: VertexOut) -> @location(0) vec4f {
  // return vec4f(vtx_out.color, 1.0);
  if vtx_out.bold > 1. {
    return vec4(1., 1.0, 1.0, 1.0);
  } else {
    return vec4(1., 1.0, 1.0, 0.5);
  }
}

