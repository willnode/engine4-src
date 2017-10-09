# @Engine4.Rendering.CrossSection4

Cross Section projection projects higher dimensional object by cutting it to a lower dimension.

[demo]

Most of the cases you'll see that the projected model is look like its *downgraded* version (e.g. `tesseract` -> `cube`).

## Visualization Depedency
|When renderer need # (visualization type)|Give me # (simplex shape)|
|---|---|
|Particle|Line|
|Wire|Triangle|
|Solid|Tetrahedron|

## Properties

This projection doesn't have any meaningful property.

> [!TIP]
> Because of its simplicity, Cross Section is considered the default projection mode for any new Viewer4.