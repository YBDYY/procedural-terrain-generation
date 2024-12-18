#include "raylib.h"
#include "libs/FastNoiseLite.h"
#include <vector>
#include <cmath>

const int screenWidth = 800;
const int screenHeight = 600;
const int terrainWidth = 100;
const int noiseScale = 0.1f;


std::vector<float> GenerateHeightMap(int width, int height) {
    std::vector<float> heightMap(width * height);

    FastNoiseLite noise;
    noise.SetNoiseType(FastNoiseLite::NoiseType_Perlin);
    noise.SetFrequency(0.05f);      
    noise.SetFractalOctaves(4);    

    
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

            
            Color color;
            if (heightValue < -0.1f) color = BLUE;         // Water
            else if (heightValue < 0.3f) color = GREEN;    // Plains
            else if (heightValue < 0.7f) color = DARKGREEN; // Hills
            else color = BROWN;                            // Mountains

           
            DrawPixel(x, y, color);
        }
    }
}

int main() {
    InitWindow(screenWidth, screenHeight, "Procedural Terrain Generation");

    
    std::vector<float> heightMap = GenerateHeightMap(screenWidth, screenHeight);

    while (!WindowShouldClose()) {
        BeginDrawing();
        ClearBackground(RAYWHITE);

       
        DrawTerrain(heightMap, screenWidth, screenHeight);
        
        EndDrawing();
    }

    CloseWindow();

    return 0;
}
