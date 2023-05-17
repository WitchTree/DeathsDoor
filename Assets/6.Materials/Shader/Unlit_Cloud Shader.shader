//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Unlit/Cloud Shader" {
Properties {
_Color ("Main Color", Color) = (0.5,0.5,0.5,1)
_NightColor ("Night Color", Color) = (0.5,0.5,0.5,1)
_MainTex ("Base (RGB)", 2D) = "white" { }
_Ramp ("Toon Ramp (RGB)", 2D) = "gray" { }
_NoiseTex ("Noise Decay", 2D) = "white" { }
_NewLightDir ("Light Dir", Vector) = (0,0,0,0)
_Alpha ("Alpha Amount", Range(0, 1)) = 0
_Glow ("Glow Amount", Range(1, 4)) = 1
_VertexOffset ("Vertex Offset", Float) = 1
_VertexAmplitude ("Vertex Amplitude", Range(0, 1)) = 1
_NoiseOffset ("Noise Offset", Vector) = (0,0,0,0)
_NoiseScale ("Noise Scale", Float) = 1
}
SubShader {
 LOD 100
 Tags { "RenderType" = "Opaque" }
 Pass {
  LOD 100
  Tags { "RenderType" = "Opaque" }
  GpuProgramID 48519
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