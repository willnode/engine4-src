# Transform Manipulation

## Basis

Engine4 has several structs (primitive data types) to aid transform manipulation.

|Struct|Description|Usage|
|---|---|---|
|@Engine4.Vector4|Four dimensional vector|Storing direction and position|
|@Engine4.Euler4|Six dimensional vector|Storing rotation angles and velocities|
|@Engine4.Matrix4|4x4 basis matrix|Storing and manipulating rotations|
|@Engine4.Matrix4x5|4x5 basis matrix|Storing rotational and translational transform altogether|

> [!NOTE]
> Engine4 does not provide Quaternion altough it is possible in 4D. The primary reason is that they do no longer maintain its main benefit in 4D and higher dimension, and very complicated.

## Working with Vector

Vector is useful for translation and scaling between vectors.

## Working with Rotation

The rule of thumb when working with rotation is always start with euler, then work with matrices, and try to never converting it back to euler.

### Where Euler is useful

Euler is useful for storing a readable data.

[image]

And also interpolating between rotation via `Lerp`, `RotateToward` or `SmoothDampAngle`.

[code]

If you happen to interpolate the current rotation in matrix, try to convert to euler at *once*.

[code]

> [!WARNING]
> This section is also telling you that @Engine4.Matrix4.ToEuler is simply bad and should be avoided as possible. Even if the problem mentioned in [known issues](/index.html) may be fixed soon.

### Where Matrix is useful

Matrices is useful for rotating any vector.

[code]

And also for combining rotation because its multiplication has no problem with gimbal lock.

[codecomparison]

This also mean you can create

### Where things work for both Euler and Matrix.

If you want to inverse the rotation, you can use @Engine4.Matrix4.Transpose(Engine4.Matrix4) or  @Engine4.Euler4.op_UnaryNegation(Engine4.Euler4)

[code]

### Where habits in 3D do not work in 4D and higher

Angle around an axis is not exist because in 4D you need two vector (so do the pattern for higher dimension).

