//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "VFX/Cookie Generator Clouds" {
Properties {
_MainTex ("Texture", 2D) = "white" { }
_MainTex2 ("Texture 2", 2D) = "white" { }
_SineStr ("Sine Range", Range(0, 1)) = 0.25
_SineSpeedX ("Sine Speed X", Float) = 1
_SineSpeedY ("Sine Speed Y", Float) = 1
_SineValue ("Sine Value", Float) = 0
_XScroll ("X Scroll", Float) = 0
_Dark ("Darkness", Float) = 1
_RedCloudMulti ("Red Cloud Multi", Float) = 1
_GreenloudMulti ("Green Cloud Multi", Float) = 1
_BlueCloudMulti ("Blue Cloud Multi", Float) = 1
}
SubShader {
 Pass {
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 58275
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