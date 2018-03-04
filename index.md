<style type="text/css">
.centerImage {
    display: block;
    margin-left: auto;
    margin-right: auto;
}
</style>

<img class="centerImage" src="images/icon_label.png" alt="Engine4 Logo">

# Welcome to Engine4 Manual v3.3

Engine4 is a library that empowers the ability create four-dimensional scenes inside Unity Game Engine. We aim to develop this library with range of features so you can build more complex scenes without even think how it works.

If you are new to Engine4 then continue reading below, otherwise you can click the [Manual](/manual) for usage instructions.

## The Main Goal

Engine4 helps you to create four dimensional scenes inside Unity Game Engine, so you can focus on creating games, not the technical challenges, and think that 'everything' is upgradable to a higher dimension.

If you have a plan to create four dimensional games, it's a lot better to start off from this library. There are some complex algorithms that you will never found anywhere else!

## The Secret Sauce

This library is doing the runtime hardwork without external depedencies. Any input data that feeded into this library are processed into a projected shape that is renderable with conventional 3D rendering engines.

Note that because Unity is a 3D Game Engine. Engine4 mostly do not use advanced features inside as it is *limited* to 3D space.

## Features Highlight

+ Builtin Datatypes, Camera, Transformation, Rendering, Builder, Gizmo, Physics Library, etc. All operating in 4D.
+ Shape building redefined: Make procedural creation easier for common scenarios.
+ Full Scripting API and source code access without any compiled libraries.
+ HTML based documentation with documented scripting APIs.
+ Bundled with many scripting optimization in mind.
+ Cross platform. Techically we can deploy to any device where unity supports.

## Limitations

The development goal of Engine4 is to make this library have similar capabilities like most game engine have.
Therefore, we put these honest limitation below as our TODOs for the next development of this library.

+ No support for rendering via GPU/hardware acceleration.
+ No particle system generator (although Engine4 *does* we have a particle renderer).
+ Only limited set of shapes (cube, sphere, capsule) that supported by the Physics Engine.
+ Physics Engine doesn't include joints and character controller.
+ Building shapes can only done via procedural creations (FBX is for 3D model).
+ No dedicated 4D graphics solution included (skybox, lighting, fog etc.)
+ The documentation may unfinished or might have small grammar mistake.
+ There are no real games published with this library so far.

## Known Issues

These known issues is currently active in the latest version is listed here (sorted from the highest severety) and will be fixed in soon:

+ Box to box collision are too aggresive (check Example/Scenes/CannonBox).
+ Transform4 does not support multi selection.

## Helpful Links

[Asset Link](http://u3d.as/fdm) | [Online Documentation](https://wellosoft.net/engine4-doc/index.html) | [Offline Documentation](https://github.com/willnode/engine4-doc/) | [Support Forum](https://forum.unity.com/threads/mesh-4d-engine-create-4d-game-in-unity.320549/) | [Developer Website](https://wellosoft.net/) | [Release Notes](~/manual/extras/releasenotes.md)
