# VulkanMod for Android ARM64

Credits: RKMC_GAMERZ, xCollateral

This repository contains a Vulkan-based renderer mod for Minecraft: Java Edition, specifically optimized for ARM64 devices running Android. This mod aims to significantly improve performance and graphical fidelity by leveraging the modern Vulkan graphics API. It is designed to be used with popular custom launchers such as FoldCraft Launcher, Zalith Launcher, and PojavLauncher.
Features
 * Enhanced Performance: By replacing the traditional OpenGL renderer with the more efficient Vulkan API, this mod can lead to higher frame rates and smoother gameplay, especially on modern ARM64 hardware.
 * Reduced CPU Overhead: Vulkan's architecture allows for better distribution of rendering tasks, reducing the CPU bottleneck and freeing up resources for other processes.
 * Improved Graphical Capabilities: Paves the way for advanced graphical features and optimizations that are not possible with the older OpenGL API.
 * Optimized for Android: Specifically tailored to run on ARM64 Android devices, taking advantage of the prevalent support for Vulkan in recent Android versions.
Compatibility
 * Architecture: ARM64 (aarch64)
 * Operating System: Android (Android 10 and newer recommended for full Vulkan 1.1 support)
 * Launchers:
   * Zalith Launcher: Fully compatible. Zalith Launcher, a fork of PojavLauncher, includes options for a Vulkan renderer.
   * PojavLauncher: Fully compatible. Installation requires following specific steps to ensure the Vulkan mod is correctly loaded.
   * FoldCraft Launcher: Not officially supported. While it may be possible to get the mod working, the FoldCraft Launcher team has indicated that official support is not planned. Users may attempt to install it as a standard mod, but functionality is not guaranteed.
 * Mod Incompatibility: This mod is fundamentally incompatible with most mods that directly interact with or modify the OpenGL rendering pipeline. This includes many popular optimization and shader mods.
Installation
Prerequisites
 * An Android device with an ARM64 processor.
 * One of the supported launchers (Zalith Launcher or PojavLauncher) installed.
 * A legal copy of Minecraft: Java Edition.
 * The Fabric mod loader installed for your desired Minecraft version within the launcher.
General Instructions
 * Download the Mod: Grab the latest release of the VulkanMod for ARM64 from the [Releases](https://github.com/shindozk/VulkanMod-Android-ARM64/releases) page.
 * Locate the 'mods' Folder: Open your launcher and navigate to the mods folder for your Fabric installation.
 * Install the Mod: Place the downloaded .jar file into the mods folder.
Launcher-Specific Instructions
Zalith Launcher
Zalith Launcher is designed with alternative renderers in mind.
 * Follow the General Instructions to place the mod in your mods folder.
 * In Zalith Launcher's settings, look for an option to select the renderer or graphics driver.
 * Choose the Vulkan-related option to enable the mod.
PojavLauncher
 * Follow the General Instructions to place the mod in your mods folder.
 * It is highly recommended to use a recent version of Fabric Loader.
 * If you encounter crashes, you may need to adjust your JVM arguments or use a specific, compatible version of the mod.
Building from Source (For Developers)
To compile this mod from its source code, you will need:
 * Java Development Kit (JDK) 8 or newer.
 * Git.
<!-- end list -->
# Clone the repository
```
git clone [https://github.com/shindozk/VulkanMod-Android-ARM64]
cd [repository-folder]
```

# Build the project (example using Gradle)
`./gradlew build`

The compiled .jar file will be located in the build/libs directory.
Contributing
Contributions from the community are welcome! If you would like to contribute, please fork the repository and submit a pull request with your changes. Before contributing, please open an issue to discuss the proposed changes.
License
This project is licensed under the MIT License.
