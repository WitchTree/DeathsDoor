//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "VFX/Cookie Gen Leaf" {
Properties {
_MainTex ("Texture", 2D) = "white" { }
_MainTex2 ("Texture 2", 2D) = "white" { }
_Strength ("Strength", Range(0, 1)) = 1
_SineStr ("Sine Range", Range(0, 1)) = 0.25
_SineSpeedX ("Sine Speed X", Float) = 1
_SineSpeedY ("Sine Speed Y", Float) = 1
_Distance ("Distance Multiplier", Float) = 1
_SineValue ("Sine Value", Float) = 0
_OffsetFrequency ("Offset Frequency", Float) = 2
_SecondTexOffset ("Second Layer Offset", Vector) = (0,0,0,0)
}
SubShader {
 Pass {
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 64361
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