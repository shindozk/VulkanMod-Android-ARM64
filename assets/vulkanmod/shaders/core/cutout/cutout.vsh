#version 450

#include "light.glsl"
#include "fog.glsl"

layout(location = 0) in vec3 Position;
layout(location = 1) in vec4 Color;
layout(location = 2) in vec2 UV0;
layout(location = 3) in ivec2 UV2;
layout(location = 4) in vec3 Normal;

layout(binding = 0) uniform UniformBufferObject {
    mat4 MVP;
    vec3 ChunkOffset;
};

layout(binding = 3) uniform sampler2D Sampler2;

layout(location = 0) out float vertexDistance;
layout(location = 1) out vec4 vertexColor;
layout(location = 2) out vec2 texCoord0;

void main() {
    vec3 pos = Position + ChunkOffset;
    gl_Position = MVP * vec4(pos, 1.0);

    vertexDistance = fog_distance(pos, 0);
    vertexColor = Color * minecraft_sample_lightmap(Sampler2, UV2);
    texCoord0 = UV0;
}