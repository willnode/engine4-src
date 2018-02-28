# Physics Components

Besides its rendering capacibility, Engine4 also have been equipped with dedicated four-dimensional physics simulation library.

These components are required in order to make the physics simulation work for a given object.

#### @Engine4.Physics.Rigidbody4

```none
Overloadable: No
Lies in: Every 4D object
```

`Rigidbody4` feeds collider and transform components to the internal engine and keep it in sync over fixed frame update. You can also change how the object react with its environment though its properties.

#### @Engine4.Physics.Collider4

```none
Overloadable: No
Lies in: Every 4D object (can have multiple)
```

`Collider4` defines the rigid shape of a rigidbody. You can put a collider as the child of rigidbody.

#### @Engine4.Physics.Physics4

```none
Overloadable: No
Lies in: Active Scene
```

`Physics4` is the *head* of the physics simulation. It lies together with `Viewer4`. Disabling the component pauses all physics execution.
