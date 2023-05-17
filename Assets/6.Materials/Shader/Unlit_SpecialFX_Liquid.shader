//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Unlit/SpecialFX/Liquid" {
Properties {
_Tint ("Tint", Color) = (1,1,1,1)
_MainTex ("Texture", 2D) = "white" { }
_FillAmount ("Fill Amount", Range(-10, 10)) = 0
_WobbleX ("WobbleX", Range(-1, 1)) = 0
_WobbleZ ("WobbleZ", Range(-1, 1)) = 0
_TopColor ("Top Color", Color) = (1,1,1,1)
_FoamColor ("Foam Line Color", Color) = (1,1,1,1)
_Rim ("Foam Line Width", Range(0, 0.1)) = 0
_RimColor ("Rim Color", Color) = (1,1,1,1)
_RimPower ("Rim Power", Range(0, 10)) = 0
}
SubShader {
 Tags { "DisableBatching" = "true" "QUEUE" = "Geometry" }
 Pass {
  Tags { "DisableBatching" = "true" "QUEUE" = "Geometry" }
  AlphaToMask On
  Cull Off
  GpuProgramID 31754
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