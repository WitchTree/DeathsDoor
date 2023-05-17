//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Unlit/TruthIris 1" {
Properties {
_Color ("Main Color", Color) = (0.5,0.5,0.5,1)
_MainTex ("Texture", 2D) = "white" { }
_StencilMask ("Stencil", Float) = 0
}
SubShader {
 LOD 100
 Tags { "RenderType" = "Opaque" }
 Pass {
  LOD 100
  Tags { "RenderType" = "Opaque" }
  ZTest Off
  Cull Off
  Stencil {
   Comp Equal
   Pass Keep
   Fail Keep
   ZFail DecrWrap
  }
  GpuProgramID 28597
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