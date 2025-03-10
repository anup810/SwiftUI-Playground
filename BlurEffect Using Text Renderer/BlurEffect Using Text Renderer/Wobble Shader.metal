//
//  Wobble Shader.metal
//  BlurEffect Using Text Renderer
//
//  Created by Anup Saud on 2025-03-10.
//

#include <metal_stdlib>
using namespace metal;
[[ stitchable ]] float2 wobble(float2 position, float amplitude) {
    return float2(position.x, position.y + amplitude * sin(position.x));
}


