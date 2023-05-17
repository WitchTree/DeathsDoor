//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "VFX/Volumetric Water" {
Properties {
_BloodColor ("Blood color", Color) = (1,1,1,1)
_SliceGuide ("Slice Guide (RGB)", 2D) = "white" { }
_SliceAmount ("Slice Amount", Range(0, 1)) = 0.5
_OffsetMulti ("Vertex Displacement", Float) = 1
}
SubShader {
 LOD 100
 Tags { "QUEUE" = "Transparent+1" "RenderType" = "Transparent" }
 Pass {
  LOD 100
  Tags { "QUEUE" = "Transparent+1" "RenderType" = "Transparent" }
  Cull Off
  GpuProgramID 37137
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