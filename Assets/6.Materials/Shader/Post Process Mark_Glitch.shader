//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Post Process Mark/Glitch" {
Properties {
_MainTex ("Texture", 2D) = "white" { }
_Power ("Power", Float) = 0
_Color ("Tint", Color) = (1,1,1,1)
_GlitchInterval ("Glitch interval time [seconds]", Float) = 0.16
_DispProbability ("Displacement Glitch Probability", Float) = 0.022
_DispIntensity ("Displacement Glitch Intensity", Float) = 0.09
_ColorProbability ("Color Glitch Probability", Float) = 0.02
_ColorIntensity ("Color Glitch Intensity", Float) = 0.07
[MaterialToggle] _WrapDispCoords ("Wrap disp glitch (off = clamp)", Float) = 1
[MaterialToggle] _DispGlitchOn ("Displacement Glitch On", Float) = 1
[MaterialToggle] _ColorGlitchOn ("Color Glitch On", Float) = 1
}
SubShader {
 Pass {
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 52707
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