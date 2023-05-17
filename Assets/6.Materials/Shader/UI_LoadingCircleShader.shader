//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "UI/LoadingCircleShader" {
Properties {
_Color ("Color", Color) = (0,0,0,0)
_MainTex ("Texture", 2D) = "white" { }
_Percent ("Percent complete", Range(0, 1)) = 0
}
SubShader {
 LOD 100
 Tags { "RenderType" = "Transparent" }
 Pass {
  LOD 100
  Tags { "RenderType" = "Transparent" }
  GpuProgramID 11652
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