//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Stencil/Stencil Render" {
Properties {
_MainTex ("Texture", 2D) = "white" { }
_Color ("Color", Color) = (1,1,1,1)
_Glow ("Glow", Float) = 1
}
SubShader {
 LOD 100
 Tags { "QUEUE" = "Transparent+100" "RenderType" = "Transparent" }
 Pass {
  LOD 100
  Tags { "QUEUE" = "Transparent+100" "RenderType" = "Transparent" }
  Blend One One, One One
  ZTest Off
  Stencil {
   Ref 2
   Comp Equal
   Pass Keep
   Fail Keep
   ZFail DecrWrap
  }
  GpuProgramID 29361
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