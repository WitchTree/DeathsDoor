//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "UI/Text Stenciler" {
Properties {
_Color ("Color", Color) = (0,0,0,0)
_NoiseIntensity ("Noise Intensity", Float) = 1
_NoiseScale ("Noise Texture Scale", Float) = 1
_NoiseTexture ("Noise", 2D) = "white" { }
_MainTex ("Sprite Texture", 2D) = "white" { }
}
SubShader {
 Tags { "FORCENOSHADOWCASTING" = "true" "IGNOREPROJECTOR" = "true" "QUEUE" = "Geometry-1" "RenderType" = "Opaque" }
 Pass {
  Tags { "FORCENOSHADOWCASTING" = "true" "IGNOREPROJECTOR" = "true" "QUEUE" = "Geometry-1" "RenderType" = "Opaque" }
  Blend SrcAlpha OneMinusSrcAlpha, SrcAlpha OneMinusSrcAlpha
  ZTest Off
  ZWrite Off
  Stencil {
   Ref 1
   Comp Always
   Pass Replace
   Fail Keep
   ZFail Keep
  }
  GpuProgramID 43929
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