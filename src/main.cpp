#include "raylib.h"
#include "../libs/FastNoiseLite.h"
#include <vector>
#include <cmath>

const int screenWidth = 1920;
const int screenHeight = 1080;
const int terrainWidth = 100;
const int terrainHeight = 100;

const float noiseScale = 0.2f;
const float noiseFrequency = 0.1f;
const int noiseOctaves = 4;

std::vector<float> GenerateHeightMap(int width, int height) {
    std::vector<float> heightMap(width * height);

    FastNoiseLite noise;
    noise.SetNoiseType(FastNoiseLite::NoiseType_Perlin);
    noise.SetFrequency(noiseFrequency);
    noise.SetFractalOctaves(noiseOctaves);

    noise.SetSeed(GetTime());

    for (int y = 0; y < height; ++y) {
        for (int x = 0; x < width; ++x) {
            float noiseValue = noise.GetNoise(x * noiseScale, y * noiseScale);
            heightMap[y * width + x] = noiseValue;
        }
    }

    return heightMap;
}

void DrawTerrain(const std::vector<float>& heightMap, int width, int height) {
    for (int y = 0; y < height; ++y) {
        for (int x = 0; x < width; ++x) {
            float heightValue = heightMap[y * width + x];

            Vector3 position = { (float)x, heightValue * 10.0f, (float)y };  // 3D position
            Color color = (heightValue < -0.1f) ? BLUE : (heightValue < 0.3f) ? GREEN : (heightValue < 0.7f) ? DARKGREEN : BROWN;

            DrawCube(position, 1.0f, 1.0f, 1.0f, color);  // Draw a cube at each terrain point
        }
    }
}

int main() {
    InitWindow(screenWidth, screenHeight, "Procedural Terrain Generation");

    // 3D camera setup
    Camera3D camera = {0};
    camera.position = { 10.0f, 10.0f, 10.0f };  // Position behind the terrain
    camera.target = { 0.0f, 0.0f, 0.0f };     // Look at the origin
    camera.up = { 0.0f, 1.0f, 0.0f };         // Y-axis is up
    camera.fovy = 45.0f;                      // Field of view
    camera.projection = CAMERA_PERSPECTIVE;          // Perspective camera

    std::vector<float> heightMap = GenerateHeightMap(terrainWidth, terrainHeight);

    SetTargetFPS(60);  // Set frame rate

    while (!WindowShouldClose()) {
        // Update the camera (this will make it follow keyboard and mouse input)
        UpdateCamera(&camera, CAMERA_FREE);

        BeginDrawing();
        ClearBackground(RAYWHITE);

        BeginMode3D(camera);

        // Draw the terrain in 3D
        DrawTerrain(heightMap, terrainWidth, terrainHeight);

        EndMode3D();

        EndDrawing();
    }

    CloseWindow();

    return 0;
}
