# Rotation in 4D

Rotation in Engine4 is described as either euler or matrix.

## Rotation as Euler

There are six planes of rotation in four dimension. They're denoted as `x`, `y`, `z`, `t`, `u` and `v`. The first three can be refered as 3D rotation part, and it is designed to be identical with rotations in 3D space.

[image in transform]

*What's about the rest of three?*

`t`, `u` and `v` refers to rotation planes that *related* with the fourth axis, and `X`, `Y`, `Z` axis, in order.

## Rotation as matrix

Four dimensional rotation can be representated as 4x4 order matrix. The main benefit is that matrices do not suffer from gimbal lock. Its detailed implementation is dissuced in the [next article]().

## No Quaternion

Engine4 does not implement quaternion for 4D. Note that this does not mean it is impossible. Quaternion is upgradable to 4D using `rotor` concepts described in Geometry Algebra. The primary reason is that they do no longer provide its main benefit in computation cost.

##### Cost comparison

|Primitive type|Stored variable|Multiplication cost|Vector rotation cost|
|---|---|---|---|
|3D Quaternion|4|16|28|
|3D (3x3) Matrix|9|27|9|
|4D Quaternion|8|64|96|
|4D (4x4) Matrix|16|64|16|

[source]

From the comparison table, we can infer why using quaternion is useful than matrix in 3D space:

+ Memory Storage is down by 55%
+ Multiplication between quaternion is 1.69 times faster
+ Even though quaternion multiplication with vector is costly, most people trick them by converting to matrix first (in optimized way)

In 4D combining rotations has the same overhead, so the benefit is gone. Meanwhile, the quaternion to matrix in 4D is much much expensive than 3D (not to mention it is so complicated that nobody have published the code so far) so it is practically useless to bring quaternion to higher dimension.

## Futher explanation

The next section discusses detailed convention used by the library. This article also extended to the scripting implementation for rotations.

