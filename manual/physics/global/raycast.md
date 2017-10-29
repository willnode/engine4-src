# Raycast

Basic raycasting can be done by calling @Engine4.Physics.Physics4.Raycast(Engine4.Physics.RaycastHit4). You can get Physics4 easily with @Engine4.MonoBehaviour4.physics4 when deriving your mono from @Engine4.MonoBehaviour4.

```c#
var hit = physics4.Raycast(new Ray4(transform4.overward));
if (hit.hit)
{
    // Raycast succeeded!
}
```