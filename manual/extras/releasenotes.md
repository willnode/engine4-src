# Release Notes

#### V3.3 - Feb 28, 2018

> This update comes with necessary updates for latest unity version

- `NEW` 32-bit mesh support for 2017.3 and above
- `CHANGE` Mark multithreading as *experimental* (hence disabled by default)
- `FIX` Compiler error and warning for Unity 2017 and 2018.1
- `FIX` Don't generate dedicated rendering job unless it's turned on

#### V3.2 - Nov 16, 2017

> This update comes with fixes and correction for very basic yet important features.

- `NEW` Render in background thread. [docs](~/manual/rendering/background.md)
- `FIX` Correction with physics angular velocity integration.
- `FIX` Incorrect Capsule and Box collision behaviour.
- `FIX` Correction for buit-in Transform4 vector axes.
- `FIX` 4D Gizmo randomly not applying position, color, matrices.

#### V3.1 - Nov 1, 2017

> This is the first stable release after very basic features has been corrected and implemented properly. Most APIs have been documented by this version.

- `NEW` Basic physics raycasting system
- `NEW` Physics Collision callback system
- `NEW` UV support, Tesseract and Hyperplane have UV implemented by default
- `NEW` Matrix4.LookAt, Matrix4.Delta
- `NEW` SimplexMode.Cubes
- `IMPROVE` Multi scene support
- `IMPROVE` Navigation UI now shows projection mode
- `IMPROVE` Transform4 position gizmo now follows local/global
- `IMPROVE` Primitive structs implements IEquatable<T> to improve performance
- `IMPROVE` Projections uses array instead of List<T> to improve performance
- `IMPROVE` Other several performance improvements
- `FIX` Debugger4 causes player build fail
- `FIX` Frustum culling get weird behaviour if too close
- `FIX` Possible null exception on parenting system
- `FIX` Physics forces discarded if done at init
- `FIX` Matrix4.ToEuler sigularities
- `CHANGE` Buffer4 profiles now applies to simplex index (indice) instead of vertices. Making vertex profiles should easier now.
- `CHANGE` Solid visualizer now must able handle polygon-like vertices
- `CHANGE` Moving physics component into Engine4.Physics and internal physics engine into Engine4.Physics.Internal

#### V3.0 (Beta) - Oct 10, 2017

`Mesh 4D Engine` -> `Engine4`

> V3.0 upgrade fully rewrites this library with more modular approach, better rendering system, including the brand new physics engine. The previous two diverse system now merged to one. Starting from this version the documentation have been improved as html-based. The version released as beta as few features haven't been finished.

#### V2.2 - Aug 19, 2017

- `NEW` SU4Cylinder to upload mesh to S4!
- `NEW` Adjustable 4th view position at S4 View Shortcut
- `NEW` S4 Primitive shape: 24-cell, 120-cell, 600-cell
- `NEW` Default material is assigned every time S4 Renderer added to a gameobject
- `NEW` Quaternion4.LookRotation, Matrix5x5.Transpose
- `CHANGE` deleting Viewer world/projection functions, use matrix instead
- `FIX` Corrected Quaternion4 multiplication
- `FIX` Improved Transform4 scale & rotation handle editor

#### V2.1 - Jun 30, 2017

- `NEW` Transform4 handle editor
- `NEW` Viewer world/projection converter APIs
- `NEW` Matrix5x5 inverse, TRS, MultiplyVector/Point4x5
- `NEW` Vector5 struct (for Matrix5x5)
- `NEW` Global TRS API for Transform4
- `NEW` V3Helper support multiple submesh
- `NEW` Culling and Better FOV for M4 projection
- `NEW` Culling for S4 for better performance
- `CHANGE` M4Renderer now always calculate lighting and added VertexProfiles.
- `CHANGE` M4Buffer uses V3Helper instead raw mesh to keep data.
- `FIX` Small performance optimizations

#### V2.0 - Jun 4, 2017

- `Mesh 4D Engine and Morpher` -> `Mesh 4D Engine`

> V2.0 upgrade fully rewrites this library with the first, real four-dimensional manipulation with basic procedural techniques. The workflow split to two for fulfilling two different projection types. The old code has been preserved as *legacy*

#### V1.2 - Feb 6, 2016

- `NEW` Baking system is now done automatically
- `CHANGE` autoUpdate property is now deprecated
- `CHANGE` Bake button is now deleted as being unnecessary
- `CHANGE` MeshRenderer is now included as component requirement
- `FIX` Bug introduced in 1.1.1 where the editor not updating properly

#### V1.1.1 - Jan 25, 2016

- Unity 5.6 Support

#### V1.1 - Apr 28, 2015

- Unity 4.6 Support.
- Faster Baking Time.
- Faster Calculation.
- Fix Morph update at runtime.
- Better Asset Management
- Added Additive RGB Shader (Particles/RGB Cube)

#### V1.0 - Apr 21, 2015

> The initial V1.0 introduces mesh-deformer that looks a like 4D shapes being transformed in 4D space.
