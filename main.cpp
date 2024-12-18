#include "raylib.h"
#include <vector>
#include <cmath>

const int screenWidth = 800;
const int screenHeight = 600;

std::vector<float> GenerateHeightMap(int width, int height){
    std::vector<float> heightMap(width * height);

    for (int y =0;y<height;y++){
        for (int x =0; x< width;x++){
            float noiseValue = (sin(x * 0.1f) + cos(y * 0.1f)) * 0.5f;
            heightMap[y * width + x] = noiseValue;
        }
    }

    return heightMap;
}

void DrawTerrain(const std::vector<float>& heightMap, int width, int height){
    for (int y =0;y<height;y++){
        for (int x = 0;x<width;x++){
            float heightValue = heightMap[y* width + x];

            //set color based on height
            Color color;
            if (heightValue< -0.1f) color = BLUE; //water
            else if (heightValue< 0.3f) color = GREEN; //Plains
            else if (heightValue < 0.7f) color = DARKGREEN; //Hills
            else color = BROWN; // Mountains

            DrawPixel(x,y,color);
        }
    }
}

int main(){
    InitWindow(screenWidth,screenHeight, "Procedural Terrain Generator");

    std::vector<float> heightMap = GenerateHeightMap(screenWidth,screenHeight);

    while (!WindowShouldClose()){

        BeginDrawing();
        ClearBackground(RAYWHITE);


        DrawTerrain(heightMap, screenWidth,screenHeight);
        
        EndDrawing();
    }

    CloseWindow();

    return 0;
}