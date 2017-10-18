# Getting Started

These are our recommended pratices when working with scripting for Engine4.

## @Engine4.MonoBehaviour4

You can derive your custom script with @Engine4.MonoBehaviour4 to get quick shortcuts to core components such as @Engine4.MonoBehaviour4.transform4, @Engine4.MonoBehaviour4.renderer4, @Engine4.MonoBehaviour4.rigidbody4, @Engine4.MonoBehaviour4.viewer4. MonoBehaviour4 inherits Unity's MonoBehaviour so all scripting functionalities are preserved.

```c#
using Engine4;

public class MyComponent : MonoBehaviour4
{

}
```

## Vector4 conflicts

Yes, Engine4 define its own @Engine4.Vector4 as we need more function than what available to UnityEngine's Vector4.

To solve name conflicts, we suggest to add this snippet to all scripts that access Engine4 functionalities:

```c#
using Vector4 = Engine4.Vector4;
```

## Changing object transform

Object transform can be changed like usual, via @Engine4.MonoBehaviour4.transform4.

```c#
transform4.position += Vector4.up * 10;
```

See the [next section](transform.md) for more information regarding to transform manipulation.

## Changing Renderer4/Modeler4/Modifier4 member or property

Changing only its property simply won't work. You have to notify the renderer using @Engine4.Renderer4.SetDirty

```c#
// make a change
GetComponent<Primitive4>().radius = 2f;
// notify
renderer4.SetDirty(DirtyLevel.Model);
``` 

Remember that changing object transformation doesn't require the code to call SetDiry as it's managed automatically behind the scene.

```c#
transform4.position += Vector4.up * 10;
// Done, no need to call SetDirty
```