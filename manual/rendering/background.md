# Background Rendering

As of v1.2 Engine4 is capable to run rendering on background threads. To activate it, you need to check the `Background` checkbox in Viewer4 inspector.

## How it Works

Every time an object need to update its projected 3D shape, they compute it directly in Unity's `Update()` call. This behaviour however is not optimal, as all Unity's operation is synchronous.

However we have the solution. If background rendering is activated, all computational load in every 4D object get transferred in single object, namely a render worker. This worker then activate threads that will solve the computation. It will run as a completely different thread so it can run without pausing Unity's rendering process. The solved computation then sent back to each renderer and renderer itself only need to push the load into their mesh in another Update() call.

The process above is repeated every time when a change is detected as long as the system active.

## Pros

+ **Asynchonous**. Your FPS will never be impacted (hence constant) no matter how expensive is the overall operation.

+ **Multi-threading** in mind. All CPU cores will be fully utilized. And can run while unity is busy with their GPU workload.
+ **Increase in response**. With extra CPU time 4D objects will be rendered faster especially with devices with many core available.

## Cons

+ **Late update**. Because it's a background operation, the computed mesh is always outdated by atleast a frame behind. However this doesn't impact gameplay experience (e.g. physics and transform checking by scripts).
+ **Hard to debug**. Because of above reason, you're likely to enable this feature only at builds
+ **Update Tearing**. It's true that the rendering process will be fast, but if not *fast enough* the mesh can be outdated by several frames, and this can be vary on each objects, refering to what we call as *tear in updates*:

[image]
