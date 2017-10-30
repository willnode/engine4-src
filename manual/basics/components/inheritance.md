# Inheritance

From previous sections, we know that there are components that overloadable. Engine4 have made some of the derivations of these for very common task.

The table below highlights derivations of these components.

## Modeler4

| Component | Summary |
|---|---|
| [Primitive4](~/manual/modeling/modeler/primitive.md) | Model regular 4D objects |
| [Sphere4](~/manual/modeling/modeler/sphere.md) | Model sphere-like objects |
| [Cylinder4](~/manual/modeling/modeler/cylinder.md) | Model 4D cylinder from any 3D mesh |

[Create custom model](~/manual/modeling/modeler/custom.md)

## Modifier4

| Component | Summary |
|---|---|
| - | - |

[Create custom modifier](~/manual/modeling/modifier/custom.md)

# Visualizer4

| Component | Summary |
|---|---|
| [ParticleExtended4](~/manual/rendering/visualizer/extended.md) | Extended version of default particle visualizer |
| [SolidExtended4](~/manual/rendering/visualizer/extended.md) | Extended version of default solid visualizer |

[Default visualizers](~/manual/rendering/visualizer/default.md)

[Create custom visualizers](~/manual/rendering/visualizer/custom.md)

# Projector4

| Component | Summary |
|---|---|
| [Frustum4](~/manual/rendering/projection/frustum.md) | Frustum projection |
| [CrossSection4](~/manual/rendering/projection/crosssection.md) | Cross section projection |

> [!NOTE]
> There is possibility to create custom projection method, however the world only knows two. Anyway if you wish so, [click here](~/manual/rendering/projection/custom.md).

# Collider4

| Component | Summary |
|---|---|
| [BoxCollider4](~/manual/physics/colliders.md) | Box-shaped collider in 4D |
| [SphereCollider4](~/manual/physics/colliders.md) | Sphere-shaped collider in 4D |
| [CapsuleCollider4](~/manual/physics/colliders.md) | Capsule-shaped collider in 4D |

> [!NOTE]
> You can't create custom collider shape as our internal physics engine is fixed to these shapes.