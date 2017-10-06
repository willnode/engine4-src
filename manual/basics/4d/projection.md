# Projection in 4D

Projection of a 4D object is an important (and easy) concept to be understand.

## Frustum Projection

[image]

In the [previous section], we have showed you a projection of a Tesseract. This kind projection is called as a frustum projection

Frustum projection is similar like common camera games would - further objects get more smaller image. If the object goes out of scope, it gets culled by a set of planes, which the process is commonly known as **frustum culling**.

[frustum cull]

A frustum projection can be subdivided into perspective and orthographic projection, if distance doesn't make the object smaller, then it would be called as orthographic projection.

## Cross section Projection

[image]

Cross section takes a completely different way to project a higher dimension. The idea is greatly motivated by [Flatland], where objects in higher dimension can be *seen* by cutting the object in half.

[image how it work]

** If this kind of projection has been known for very long time why I don't see any games use it? **

Because you need to know how to cut down something into thing that renderable to 3D graphics (i.e. triangles). Now you might wonder how's something can be sliced to bunch of triangles?

The answer is **tetrahedron**. Tetrahedron is the simplest possible geometry shape that has volume, and when it cutted, the result is always either a triangle or quad.

[image tetra cutted]

