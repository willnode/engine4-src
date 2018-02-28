# Creating custom models

You can create custom models by creating a script that deriving from @Engine4.Rendering.Modeler4

```c#
using Engine4;
using Engine4.Internal;
using Engine4.Rendering;

public class MyModel4 : Modeler4
{
	public override void CreateModel(Buffer4 buffer)
	{
		// Build a model here
	}
}
```

You can read more information related to @Engine4.Buffer4 [here](../buffer.md)
