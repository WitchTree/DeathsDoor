//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Hidden/HxVolumetricProjector" {
Properties {
}
SubShader {
 Pass {
  Blend One One, One One
  ZTest Always
  ZWrite Off
  Cull Front
  Fog {
   Mode Off
  }
  GpuProgramID 58884
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DENSITYPARTICLES_ON" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DENSITYPARTICLES_ON" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Blend One One, One One
  ZWrite Off
  Fog {
   Mode Off
  }
  GpuProgramID 98728
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DENSITYPARTICLES_ON" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DENSITYPARTICLES_ON" }
"// shader disassembly not supported on DXBC"
}
}
}
}
}