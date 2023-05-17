//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Unlit/VertexColorShader" {
Properties {
_Color ("Color", Color) = (0,0,0,0)
}
SubShader {
 LOD 100
 Tags { "RenderType" = "Fade" }
 Pass {
  LOD 100
  Tags { "RenderType" = "Fade" }
  Blend One One, One One
  Cull Off
  GpuProgramID 32567
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
}
}
}
}