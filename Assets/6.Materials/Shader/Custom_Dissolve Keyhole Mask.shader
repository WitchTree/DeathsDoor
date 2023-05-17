//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Custom/Dissolve Keyhole Mask" {
Properties {
_Color ("Color", Color) = (1,1,1,1)
_MainTex ("Dissolve Guide (RGB)", 2D) = "white" { }
_DissolveAmount ("Dissolve Amount", Range(0, 1)) = 0.5
}
SubShader {
 LOD 100
 Tags { "RenderType" = "Transparent" }
 Pass {
  LOD 100
  Tags { "RenderType" = "Transparent" }
  ColorMask 0 0
  Stencil {
   Ref 2
   Comp Always
   Pass Replace
   Fail Keep
   ZFail Keep
  }
  GpuProgramID 12768
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