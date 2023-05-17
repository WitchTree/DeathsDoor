//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Hidden/HBAO" {
Properties {
_MainTex ("", 2D) = "" { }
_HBAOTex ("", 2D) = "" { }
_NoiseTex ("", 2D) = "" { }
_DepthTex ("", 2D) = "" { }
_NormalsTex ("", 2D) = "" { }
_rt0Tex ("", 2D) = "" { }
_rt3Tex ("", 2D) = "" { }
}
SubShader {
 Pass {
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 11610
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 79225
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 151685
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 227369
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 305442
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 359283
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 420012
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 476536
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 554388
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 634973
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 695088
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 722891
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 825958
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 868059
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 955160
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 989532
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 1072722
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 1170131
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 1197049
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 1270114
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 1339219
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 1425669
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 1502816
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 1549462
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 1580508
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  ColorMask RGB 0
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 1701576
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  ColorMask RGB 0
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 1756304
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  ColorMask RGB 0
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 1783882
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  ColorMask RGB 0
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 1866070
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  ColorMask RGB 0
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 1911235
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  ColorMask RGB 0
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 2011033
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  ColorMask RGB 0
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 2086102
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  ColorMask RGB 0
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 2117342
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  ColorMask RGB 0
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 2171225
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  ColorMask RGB 0
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 2234831
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  ColorMask RGB 0
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 2316255
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 2391631
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Blend DstColor Zero, DstAlpha Zero
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 2455712
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  ColorMask RGB 0
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 2517626
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  ColorMask RGB 0
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 2596836
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Blend DstColor Zero, DstColor Zero
  ColorMask RGB 0
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 2622584
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Blend DstColor Zero, DstColor Zero
  ColorMask RGB 0
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 2690797
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Blend One One, One One
  ColorMask RGB 0
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 2776730
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  ColorMask RGB 0
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 2826863
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  ColorMask RGB 0
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 2897146
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Blend DstColor Zero, DstColor Zero
  ColorMask RGB 0
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 2987168
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
}
}
 Pass {
  Blend DstColor Zero, DstColor Zero
  ColorMask RGB 0
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 3027335
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "DEFERRED_SHADING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_CAMERA" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLOR_BLEEDING_ON" "NORMALS_RECONSTRUCT" "OFFSCREEN_SAMPLES_CONTRIB" "ORTHOGRAPHIC_PROJECTION_ON" }
"// shader disassembly not supported on DXBC"
}
}
}
}
}