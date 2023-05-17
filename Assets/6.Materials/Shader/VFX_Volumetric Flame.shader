//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "VFX/Volumetric Flame" {
Properties {
_Color ("color", Color) = (1,1,1,1)
_Speed ("Speed", Float) = 1
_Noise ("Noise (RGB)", 2D) = "white" { }
_OffsetMulti ("Vertex Displacement", Float) = 1
_Cutoff ("Cutoff", Float) = 1
_Glow ("Glow", Float) = 1
}
SubShader {
 LOD 100
 Tags { "QUEUE" = "Transparent+1" "RenderType" = "Transparent" }
 Pass {
  LOD 100
  Tags { "QUEUE" = "Transparent+1" "RenderType" = "Transparent" }
  Cull Off
  GpuProgramID 5569
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