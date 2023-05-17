//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Hidden/HxVolumetricApplyRenderQueue" {
Properties {
}
SubShader {
 Tags { "QUEUE" = "Transparent-5" }
 Pass {
  Tags { "QUEUE" = "Transparent-5" }
  Blend One One, One One
  ZTest Always
  ZWrite Off
  GpuProgramID 12165
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