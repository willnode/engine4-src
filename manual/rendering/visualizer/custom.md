# Custom Visualizer

Here's the snippet template for creating custom visualizer.

```c#
using System;
using UnityEngine;
using Engine4;
using Engine4.Rendering;

public class CustomVisualizer : Visualizer4
{
	Buffer3 helper;

	public override SimplexMode WorkingSimplexCase
	{
		get
		{
			// change simplex mode you've expected here
			return SimplexMode.Tetrahedron;
		}
	}

	public override void Clear(Mesh m)
	{
		// when renderer tells to clear buffer
		m.Clear();
	}

	public override void End(Mesh m, VertexProfiles profile)
	{
		// when renderer tells to push
		helper.Apply(m, profile, MeshTopology.Triangles);
	}

	public override void Initialize(Buffer3 helper)
	{
		// whe renderer tells to get ready
		(this.helper = helper).Clear();
	}

	public override void Render(VertexProfile[] buffer, int count)
	{
		// Do your stuff on profile
	}

	public override void Render(Vector4[] buffer, int count)
	{
		// Do your stuff
	}
}
```
