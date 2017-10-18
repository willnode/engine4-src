# Inheritance

From previous sections, we know that there are components that overloadable. Engine4 have made some of the derivations of these for very common task.

The table below highlights derivations of these components.

## Modeler4

| Component | Summary |
|---|---|
| Primitive4 | Model regular 4D objects |
| Sphere4 | Model sphere-like objects |
| Cylinder4 | Model 4D cylinder from any 3D mesh |

[Create custom model]

## Modifier4

| Component | Summary |
|---|---|
| UvMapper4 | Generate UVs |

# Visualizer4

| Component | Summary |
|---|---|
| ParticleExtended4 | Extended version of default particle visualizer |
| WireExtended4 | Extended version of default wire visualizer |
| SolidExtended4 | Extended version of default solid visualizer |

[Default visualizers]

[Create custom visualizers]

# Projector4

| Component | Summary |
|---|---|
| Frustum4 | Frustum projection |
| CrossSection4 | Cross section projection |

> [!NOTE]
> There is possibility to create custom projection method, however the world only knows two. Anyway if you wish so, [click here](~/manual/rendering/projections/custom.md).

# Collider4

| Component | Summary |
|---|---|
| BoxCollider4 | Box-shaped collider in 4D |
| SphereCollider4 | Sphere-shaped collider in 4D |
| CapsuleCollider4 | Capsule-shaped collider in 4D |

> [!NOTE]
> You can't create custom collider shape as our internal physics engine is fixed to these shapes.