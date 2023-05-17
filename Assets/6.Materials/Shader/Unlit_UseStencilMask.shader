//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Unlit/UseStencilMask" {
Properties {
_StencilMask ("Mask Layer", Range(0, 255)) = 1
_Color ("Void Color", Color) = (0,0,0,1)
}
SubShader {
 LOD 100
 Tags { "QUEUE" = "Transparent+1" "RenderType" = "Transparent" }
 Pass {
  LOD 100
  Tags { "QUEUE" = "Transparent+1" "RenderType" = "Transparent" }
  ZWrite Off
  Stencil {
   Ref 2
   ReadMask 0
   Comp NotEqual
   Pass Keep
   Fail Keep
   ZFail DecrWrap
  }
  GpuProgramID 1683
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