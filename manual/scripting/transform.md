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
> Engine4 does not provide Quaternion altough it is possible in 4D. The primary reason is that they do no longer maintain its main benefit in 4D and higher dimension, and very complicated. See [here](~/manual/basics/4d/rotation.md).

## Working with Vector

Vector is useful for translation and scaling between vectors.

## Working with Rotation

The rule of thumb when working with rotation is always start with euler, then work with matrices, and try to never converting it back to euler.

### Where Euler is useful

Euler is useful for storing a readable data.

[image]

You can also interpolate between rotation via @Engine4.Euler4.Lerp(Engine4.Euler4,Engine4.Euler4,System.Single), `RotateToward` or `SmoothDampAngle`.

If you happen to interpolate the current rotation in matrix, try to convert to euler at *once*. This is necessary to avoid chaos.

```c#
// In coroutine ....
var current = transform4.eulerAngles;
var target = new Euler4(4, 90); // 90 deg at T (XW plane)
for(int i = 0; i < 20; i++)
{
    transform4.eulerAngles = Euler4.Lerp(current, target, i / 20f);
    yield return null;
}
```

```c#
// Every update with SmoothDampAngle ....
Euler4 current;
Euler4 target = new Euler4(4, 90); // 90 deg at T (XW plane)
Euler4 speed;

void Start() { current = transform4.eulerAngles; }

void Update()
{
    current = Euler4.SmoothDampAngle(current, target, ref speed, 0.2f);
}
```

### Where Matrix is useful

Matrices is useful for rotating any vector.

[code]

And also for combining rotation because its multiplication has no problem with gimbal lock.

```c#
Euler4 A = transform4.eulerAngles, B = new Euler4(4, 90);
Euler4 euler = A + B; // Dont' do this! gimbal lock may happen!

Matrix4 C = transform4.rotation, D = Matrix4.Euler4(4, 90);
Matrix4 matrix = C * D; // No problem :)
```

### Where things work for both Euler and Matrix.

If you want to inverse the rotation, you can use @Engine4.Matrix4.Transpose(Engine4.Matrix4) or  @Engine4.Euler4.op_UnaryNegation(Engine4.Euler4)

[code]

### Where habits in 3D do not work in 4D and higher

Angle around an axis is not exist because in 4D you need two vector (so do the pattern for higher dimension).

## Listening to transform change

```c#
class MyComponent : MonoBehaviour4
{

    void OnEnable()
    {
        // Register
        transform4.update += OnTransformUpdate;
    }

    void OnDisable()
    {
        // Unregister
        transform4.update -= OnTransformUpdate;
    }

    void OnTransformUpdate ()
    {
        // Do something when this transform changed
    }
}
```