//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Unlit/Exposition Image Shader" {
Properties {
_EdgeColor ("Edge Color", Color) = (1,1,1,1)
_MainTex ("Texture", 2D) = "white" { }
_Noise ("Noise", 2D) = "white" { }
[PropertyBlock] _Dissolve ("Dissolve", Range(0, 1)) = 0
_EdgeSize ("Edge Size", Float) = 0.05
}
SubShader {
 LOD 100
 Tags { "IGNOREPROJECTOR" = "true" "QUEUE" = "Transparent" "RenderType" = "Transparent" }
 Pass {
  LOD 100
  Tags { "IGNOREPROJECTOR" = "true" "QUEUE" = "Transparent" "RenderType" = "Transparent" }
  Blend SrcAlpha OneMinusSrcAlpha, SrcAlpha OneMinusSrcAlpha
  ZWrite Off
  GpuProgramID 3229
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