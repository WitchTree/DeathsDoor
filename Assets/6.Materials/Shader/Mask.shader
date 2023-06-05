Shader "Custom/Mask"
{
    Properties
    {
        _Color ("Main Color", Color) = (1,1,1,1)
        _MainTex ("Base (RGB) Gloss (A)", 2D) = "white" {}
        _Glossiness ("Smoothness", Range(0,1)) = 0.5
        _Metallic ("Metallic", Range(0,1)) = 0.0
    }
    Category
    {
        SubShader
        {
            Tags { "RenderType" = "Opaque" }
            Pass
            {
                ZWrite On
                ZTest Greater
                Lighting On
                SetTexture [_MainTex]{}
            }


        }
    }
    FallBack "Diffuse"
}
