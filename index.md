<style type="text/css">
.centerImage {
    display: block;
    margin-left: auto;
    margin-right: auto;
}
</style>

<img class="centerImage" src="images/icon_label.png" alt="Engine4 Logo">

# Welcome to Engine4 Manual v3.1

Engine4 is a library that empowers the ability create four-dimensional scenes inside Unity Game Engine. We aim to develop this library with range of features so you can build more complex scenes without even think how it works.

If you new to Engine4 then go on, otherwise you can click the Manual for usage instructions.

## The Main Goal

Engine4 helps you to create four dimensional scenes inside Unity Game Engine, so you can focus on creating games, not the technical challenges, and think that 'everything' is upgradable to a higher dimension.

If you have a plan to create four dimensional games, it's a lot better to start off from this library. There are some complex algorithms that you will never found anywhere else!

## The Secret Sauce

The library is doing the runtime hardwork without external depedencies. Any input data that feeded into the library are processed into a projected shape that is renderable with conventional 3D rendering engines.

Note that because Unity is a 3D Game Engine. Engine4 mostly do not use advanced features inside as it is *limited* to 3D space. 

## Features Highlight

+ Builtin Datatypes, Camera, Transformation, Rendering, Builder, Gizmo, Physics Library, in 4D.
+ Shape building redefined. Make procedural creation easier for common scenarios.
+ Full Scripting API and source code access without external libraries. 
+ HTML based documentation with documented scripting APIs.
+ Bundled with many scripting optimization in mind.
+ Cross platform. Deploy anywhere you game can do.

## Limitations

The development goal of Engine4 is to make the library have similar capabilities like most game engine have.
Therefore, we put these honest limitation below as our TODOs for the next development of the library.

+ ~~Currently does all the hardwork in single main thread (job system?).~~
+ No support for rendering via hardware acceleration.
+ No particle system generator (although we have its renderer).
+ Only limited set of shapes that supported by the Physics Engine.
+ Physics Engine doesn't include joints and character controller.
+ Building shapes can only done via procedural creations.
+ No dedicated 4D graphics solution included (skybox, lighting, fog etc.)
+ The documentation may unfinished or have small grammar mistake.
+ There are no real games published with this library so far.

## Known Issues

These known issues is currently active in the latest version is listed here (sorted from the highest severety) and will be fixed in short time:

+ ~~Incorrect physics collision impacts~~
+ Box to box collision some time is too aggresive.
+ Transform4 does not support multi selection.

## Helpful Links

[Asset Link](http://u3d.as/fdm) | [Online Documentation](https://wellosoft.net/engine4-doc/index.html) | [Offline Documentation](https://github.com/willnode/engine4-doc/) | [Support Forum](https://forum.unity.com/threads/mesh-4d-engine-create-4d-game-in-unity.320549/) | [Developer Website](https://wellosoft.net/) | [Release Notes](~/manual/extras/releasenotes.md)