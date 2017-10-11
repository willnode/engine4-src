
# Notation and Convention Rules

Engine4 is care about the conventions that used across the library to avoid confusion in the long run.

## The fourth axis

The fourth axis is denoted by the letter `W`. This applies to whole library API. 

Additionally Engine4 uses `overward` for referencing a vector that points to `W`. The opposite vector may also be called as `underward`.

> [!TIP]
> There also exist a paper that use the same term. See [here](http://steve.hollasch.net/thesis/).

## The Three-D part convention rules

Engine4 honor the convention used in Unity Game Engine. The direction of each XYZ does not change, including the rotation axes, direction and its euler order.

This means if rotation planes that related to `W` are set to zero, the object orientation will be the same with Unity.

## Rotation convention

A rotation is happening on plane rotations. For simplicity, the library denote that to a single letter.

Rotation on * plane | Shortcoded as *  |
|---|---|
|YZ|x|
|XZ|y|
|XY|z|
|XW|t|
|YW|u|
|ZW|v|

## Rotation order and direction

Euler to matrix conversion (and its inverse) codes are really different if the euler order are different.

You make things clear, Engine4 defines @Engine4.Matrix4.Euler(Engine4.Euler4) as conversion that creates matrix that rotates by `y`, then `z`, then `x`, then `t`, then `u`, then `v`.

The rotation direction for `x`, `y` and `z` is preserved - clockwise based on axis perpendicular to each plane in 3D sense. For `t`, `u`, `v` is designed such at 90 positive deg rotation makes each 3D axis get replaced with positive over axis.