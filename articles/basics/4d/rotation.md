# Rotation in 4D

Rotation in 4D is kind of weird if you haven't seen it yet. But deep in the analytical process, it's correct and has its own pattern. 

## Introduction

Take a look to image below where the tesseract is being rotated in 2D, 3D and 4D.

[image]

*What's going on over here?*

Here's what happening:

> info
> First things first, you need to be informed that rotation is applied around a **plane**, not from an axis. For example, rotation around X axis represents a rotation on YZ plane, etc. This is an important concept before stepping to a higher dimension.

So how much rotation planes in 4D? The answer is **6**, and that is rotation on XY, YZ, XZ, XW, YW, ZW planes.

From the image above, the first plane are the 2D rotation, the next two are 3D rotation, and the rest are 4D rotations. 

## Make it easy

To keep things simple, Engine4 encode these planes into a single letter

Rotation on * plane | YZ | XZ | XY | XW | YW | ZW 
--- | --- | --- | --- | --- | --- | ---
Shortcoded as *     | x | y | z | t | u | v

You'll see the short code is used in some part of the library, like when editing the transformation of an object

[transform image]
