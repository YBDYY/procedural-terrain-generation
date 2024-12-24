#include "raylib.h"
#include "../libs/FastNoiseLite.h"
#include <vector>
#include <cmath>
#include <string>
#include <sstream>


const int screenWidth = 1280;
const int screenHeight = 1080;
const int terrainWidth = 100;
const int terrainHeight = 100;

 float noiseScale = 0.2f;
 float noiseFrequency = 0.1f;
 int noiseOctaves = 4;

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

std::string FormatFloat(float value){
    std::ostringstream stream;
    stream.precision(2);
    stream << std::fixed << value;
    return stream.str();
}

bool UpdateParameters() {
    bool parametersChanged = false;

    if (IsKeyPressed(KEY_ONE)) {
        noiseScale = std::max(0.01f, noiseScale - 0.01f);
        parametersChanged = true;
    }
    if (IsKeyPressed(KEY_TWO)) {
        noiseScale += 0.01f;
        parametersChanged = true;
    }
    if (IsKeyPressed(KEY_THREE)) {
        noiseFrequency = std::max(0.01f, noiseFrequency - 0.01f);
        parametersChanged = true;
    }
    if (IsKeyPressed(KEY_FOUR)) {
        noiseFrequency += 0.01f;
        parametersChanged = true;
    }
    if (IsKeyPressed(KEY_FIVE)) {
        noiseOctaves = std::max(1, noiseOctaves - 1);
        parametersChanged = true;
    }
    if (IsKeyPressed(KEY_SIX)) {
        noiseOctaves++;
        parametersChanged = true;
    }

    return parametersChanged;
}

void DrawUI(float noiseScale, float noiseFrequency, int noiseOctaves, Camera3D camera) {
    DrawText("Controls:", 10, 10, 20, BLACK);
    DrawText("WASD to move, Mouse to look around", 10, 40, 20, DARKGRAY);
    DrawText("Keys [1/2]: Decrease/Increase Noise Scale", 10, 70, 20, DARKGRAY);
    DrawText("Keys [3/4]: Decrease/Increase Noise Frequency", 10, 100, 20, DARKGRAY);
    DrawText("Keys [5/6]: Decrease/Increase Noise Octaves", 10, 130, 20, DARKGRAY);

    DrawText(("Noise Scale: " + FormatFloat(noiseScale)).c_str(), 10, 170, 20, BLACK);
    DrawText(("Noise Frequency: " + FormatFloat(noiseFrequency)).c_str(), 10, 200, 20, BLACK);
    DrawText(("Noise Octaves: " + std::to_string(noiseOctaves)).c_str(), 10, 230, 20, BLACK);

    DrawText("Camera Position:", 10, 270, 20, BLACK);
    DrawText(("X: " + FormatFloat(camera.position.x) + 
              " Y: " + FormatFloat(camera.position.y) + 
              " Z: " + FormatFloat(camera.position.z)).c_str(), 
              10, 300, 20, DARKGRAY);

    DrawFPS(screenWidth - 100, 10);  // Display FPS in the top-right corner
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
        // Update terrain parameters and regenerate height map if necessary
        if (UpdateParameters()) {
            heightMap = GenerateHeightMap(terrainWidth, terrainHeight);
        }

        // Update the camera (this will make it follow keyboard and mouse input)
        UpdateCamera(&camera, CAMERA_FREE);

        BeginDrawing();
        ClearBackground(RAYWHITE);

        BeginMode3D(camera);

        // Draw the terrain in 3D
        DrawTerrain(heightMap, terrainWidth, terrainHeight);

        EndMode3D();

        DrawUI(noiseScale,noiseFrequency,noiseOctaves,camera);

        EndDrawing();
    }

    CloseWindow();

    return 0;
}
