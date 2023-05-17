//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "VFX/Transition Dissolve Shader" {
Properties {
_Color1 ("Start Color", Color) = (1,1,1,1)
_Color2 ("End Color", Color) = (1,1,1,1)
_MainTex ("Texture", 2D) = "white" { }
_Noise ("Noise", 2D) = "white" { }
[PropertyBlock] _Dissolve ("Dissolve", Range(-1, 2)) = 0
}
SubShader {
 LOD 100
 Tags { "IGNOREPROJECTOR" = "true" "RenderType" = "Opaque" }
 Pass {
  LOD 100
  Tags { "IGNOREPROJECTOR" = "true" "RenderType" = "Opaque" }
  ZWrite Off
  GpuProgramID 58880
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