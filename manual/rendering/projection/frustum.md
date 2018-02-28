# @Engine4.Rendering.Frustum4

Frustum projection projects higher dimensional object by making 'far' objects smaller.

![demo](~/images/tesseract-rgbfrustum.png)

This kind of projection is what most people recognize as what is 4D objects looks like.

## Visualization Depedency

|When renderer need # (visualization type)|It needs # (simplex shape)|
|---|---|
|Particle|Point|
|Wire|Line|
|Solid|Triangle|

## Properties

|Name|Description|
|---|---|
|Perspectiveness|Orthographic to Perspective interpolation|
|Focal length|Inverse tangent of the FOV angle|
|Near clip|Nearest possible vertex distance before clipped|
|Far clip|Furthest possible vertex distance before clipped|
|Shift clip|Underward camera location offset relative to pivot|
|Use Frustum Culling|If yes, vertex will be culled using frustum cones|

## Demographic

Demographic below explains the properties in graphics:

![demographic](~/images/frustum-specs.png)

## Suitable Usage

Frustum may better suited for educational or visual purposes, despite it may be more complicated than cross section. However building model for frustum is easier because it does not deal with `Tetrahedron` as it's a game changer for cross section.
