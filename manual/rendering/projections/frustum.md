# @Engine4.Rendering.Frustum4

Frustum projection projects higher dimensional object by making 'far' objects smaller.

[demo]

This kind of projection is what most people recognize as what is 4D objects looks like.

## Visualization Depedency
|When renderer need # (visualization type)|Give me # (simplex shape)|
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

[demographic]

> [!WARNING]
> There are known but rare issue where frustum culling might be broken if model were too close to the camera.