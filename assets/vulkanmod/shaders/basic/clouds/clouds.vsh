#version 450

layout(binding = 0) uniform UniformBufferObject {
   mat4 MVP;
   vec3 ModelOffset;
};

layout(location = 0) in vec3 Position;
layout(location = 1) in vec4 Color;

layout(location = 0) out vec4 vertexColor;
layout(location = 1) out float vertexDistance;

void main() {
    gl_Position = MVP * vec4(Position, 1.0);
    vec3 viewPos = Position + ModelOffset;
    vertexDistance = length(viewPos.xyz);

    vertexColor = Color;
}
