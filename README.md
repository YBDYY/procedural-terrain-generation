# **Procedural Terrain Generation**

A procedural terrain generator in C++ using the Raylib and FastNoiseLite libraries. This project generates a 3D terrain mesh based on Perlin noise and displays it with adjustable parameters, allowing users to modify the terrain by changing noise scale, frequency, and octaves in real-time.

## **Features**

- Procedural terrain generation based on Perlin noise.
- Adjustable parameters:
  - **Noise Scale**: Controls the scale of the terrain features.
  - **Noise Frequency**: Adjusts the frequency of the noise for finer or more expansive terrain features.
  - **Noise Octaves**: Controls the detail level of the terrain (more octaves = more detail).
- Real-time updates of terrain based on user input.
- 3D camera with free movement, including up and down flying.
- Simple user interface (UI) displaying the current parameter values and camera position.
- FPS counter to monitor performance.

## **Libraries Used**

- [Raylib](https://www.raylib.com/) – Simple and easy-to-use C library for game programming.
- [FastNoiseLite](https://github.com/Auburn/FastNoiseLite) – A lightweight noise library for procedural content generation.

## **Controls**

- **WASD**: Move the camera.
- **Mouse**: Look around.
- **Space**: Fly upwards.
- **Ctrl**: Fly downwards.
- **Keys [1/2]**: Decrease/Increase Noise Scale.
- **Keys [3/4]**: Decrease/Increase Noise Frequency.
- **Keys [5/6]**: Decrease/Increase Noise Octaves.
- **Esc**: Close the program.

## **Compilation and Running**

### **Prerequisites**

- [Raylib](https://www.raylib.com/) (install instructions can be found on the website).
- [FastNoiseLite](https://github.com/Auburn/FastNoiseLite) (ensure the library is properly linked).
- CMake 3.10 or higher.
- A C++ compiler that supports C++11 or later.

### **Steps to Build and Run**

1. Clone or download the repository:
   ```bash
   git clone https://github.com/yourusername/procedural-terrain-generation.git
   cd procedural-terrain-generation
2. Create a build directory and navigate to it:
   ```bash
   mkdir build
   cd build
3. Run CMake to generate the build files:
   ```bash
   cmake ..
4. Compile the project:
   ```bash
   make
   ```
5. Run the program:
   ```bash
   ./ProceduralTerrain
   ```
## **Customization**

- You can modify the terrain generation logic by adjusting the noise parameters and experimenting with different settings in `GenerateHeightMap()` and `DrawTerrain()`.
- To change the appearance of the terrain, modify the logic in `DrawTerrain()` where the terrain colors are assigned based on height values.

## **License**

This project is licensed under the MIT License – see the [LICENSE](LICENSE) file for details.
  



   
