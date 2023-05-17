//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "VFX/Slash Effect Heavy" {
Properties {
_Color ("Color", Color) = (1,1,1,1)
_ExtraColor ("Extra Glow Color", Color) = (1,1,1,1)
_MainTex ("Distortion Map", 2D) = "white" { }
_GlowTex ("Glow Map", 2D) = "white" { }
_Cutoff ("Cutoff", Float) = 0.5
_Glow ("Glow", Float) = 2
}
SubShader {
 LOD 100
 Tags { "QUEUE" = "Transparent+1" "RenderType" = "Transparent" }
 Pass {
  LOD 100
  Tags { "QUEUE" = "Transparent+1" "RenderType" = "Transparent" }
  Cull Off
  GpuProgramID 36402
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