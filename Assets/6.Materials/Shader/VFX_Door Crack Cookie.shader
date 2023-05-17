//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "VFX/Door Crack Cookie" {
Properties {
_MainTex ("Texture", 2D) = "white" { }
_MainTex2 ("Texture 2", 2D) = "white" { }
_Cutoff ("Cutoff", Float) = 0
_NoisePower ("Noise Power", Float) = 1
_Scale ("Scale", Float) = 1
_Clip ("Clip", Float) = 0
}
SubShader {
 Pass {
  ZTest Always
  Cull Off
  GpuProgramID 15770
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