# Collision Callback

Engine4 physics have its own collision callback, though it's require you to have more little setup. Also see @Engine4.Physics.CollisionHit4 and @Engine4.Physics4.Collider4.callback .

```c#
class MyComponent : MonoBehaviour4
{

    void OnEnable()
    {
        // Register
        GetComponent<Collider4>().callback += OnCollisionCallback;
    }

    void OnDisable()
    {
        // Unregister
        GetComponent<Collider4>().callback -= OnCollisionCallback;
    }

    void OnCollisionCallback (CollisionHit4 collision)
    {
        // Do something when this collider hit
    }
}
```
