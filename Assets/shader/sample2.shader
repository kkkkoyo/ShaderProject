Shader "Custom/sample2" {
	SubShader {
		//Settings
		//********************
		Tags { "RenderType"="Opaque" }
		LOD 200
		
		CGPROGRAM
		#pragma surface surf Standard fullforwardshadows
		#pragma target 3.0
		//********************
		//Input structの中身が空ではコンパイルが通らない
		struct Input {
			float2 uv_MainTex;//テクスチャのuv座標
			//viewDir=視線方向
			//worldPos=ワールド座標
			//screenPos=スクリーン座標
		};

		void surf (Input IN, inout SurfaceOutputStandard o) {
			o.Albedo = fixed4(1.0f, 1.0f, 1.0f, 1);
			//Albedo=基本色
			//Normal=法線情報
		}
		ENDCG
	}
	FallBack "Diffuse"
}