
# Component

In summary `Transform4` is like a 4D variant of UnityEngine's `Transform` component. You can set object's local position, rotation, and scale (if available) via inspector. You can also set it via scripting.

## 3D vs 4D

![image3dvs4d](~/images/inspector-transform3d4d.png)

While Unity requires every game object to have `Transform`, `Transform4` doesn't. It only get added automatically when you add Engine4 components like `Renderer4` or `Rigidbody4`.

Please note `Transform` and `Transform4` are mutually exclusive and have nothing to do with each other. This also means you can mix between two values without problem at all, altough it's not recommended.

## Parenting

`Transform4` can handle parenting much like standard `Transform`. You even can put `Transform4` inside to a parent which have no `Transform4` at all.

## Scaling Problem

To avoid transformational problem, Transform4 doesn't apply scaling to its children. It is useful only for components that need it (e.g. `Renderer4` and `Collider`). If you didn't see `scale` in inspector, that's because none of object's components need Transform4 scale.
