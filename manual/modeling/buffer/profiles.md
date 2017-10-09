# Profiles

Profile is a way to add vertex metadata (i.e. `color` and `uv`) and can be done via @Engine4.Buffer4.AddProfile(Engine4.VertexProfile) or @Engine4.Buffer4.SetProfile(System.Int32,UnityEngine.Color) or  @Engine4.Buffer4.SetProfile(System.Int32,UnityEngine.Vector4,System.Int32).

> [!NOTE]
> Buffer profiles are discarded when @Engine4.Buffer4.ProfileDifference is not `0` or profile @Engine4.Renderer4.profile is set to `none`

## UV Specification

Engine4 treats UVs based on their simplex type:

|Simplex type|UV dimension|
|---|---|
|Point|0D|
|Line|1D|
|Triangle|2D|
|Tetrahedron|3D|

[demographic]

These specification is important as each Engine4 projector treat UVs differently:

+ Frustum4 interpolate all UVs if it culled by frustum cone.
+ CrossSection4 projects UV (eg. `3D` to `2D` for solid projection). This didn't happen for `UV3` (so user may use that for shader effects).



