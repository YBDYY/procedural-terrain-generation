#include "cameramovement.h"

void InitializeCamera(Camera2D& camera, int screenWidth, int screenHeight){
    camera.zoom = 1.0f;
    camera.target = (Vector2){screenWidth/2.0f,screenHeight / 2.0f};
    camera.offset = (Vector2){screenWidth/2.0f,screenHeight / 2.0f};

}

void UpdateCamera(Camera2D&  camera){
    if (IsKeyDown(KEY_UP)) camera.target.y -= 10;
    if (IsKeyDown(KEY_DOWN)) camera.target.y += 10;
    if (IsKeyDown(KEY_LEFT)) camera.target.x -= 10;
    if (IsKeyDown(KEY_RIGHT)) camera.target.x += 10;

    if (IsKeyPressed(KEY_Z)) camera.zoom += 0.1f;
    if (IsKeyPressed(KEY_X)) camera.zoom -= 0.1f;
}