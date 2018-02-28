# Cross and Dot operation

## Dot operation in 4D

Dot operation's main usage is not broken in higher dimension. It is still useful for find vector length or project a vector by another vector.

## Cross operation in 4D

Unlike Dot, Cross product is flawed and no longer works for higher dimension. This is mainly because our mistake as 3D being living in 3D world, having the same number of axes and plane rotation, and historically naming these operations below to a similar name, simply because the function are the same in 3D, regardless the fact that each of these have really different meaning and purpose.

Because higher dimension have different axes and plane rotation, cross operation is splitted to four definitions:

#### Cross operation to find another vector

@Engine4.Vector4.Cross(Engine4.Vector4,Engine4.Vector4,Engine4.Vector4)

#### Cross operation to find rotation between two vector

@Engine4.Euler4.Cross(Engine4.Vector4,Engine4.Vector4)

### Cross operation to find rotated vector after rotation

@Engine4.Euler4.Cross(Engine4.Euler4,Engine4.Vector4)

### Cross operation to combine rotation

@Engine4.Euler4.Cross(Engine4.Euler4,Engine4.Euler4)

> [!NOTE]
> Those differences are already known for a long time in mathematics world known as wedge operation in geometry algebra.
