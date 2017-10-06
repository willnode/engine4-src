# Profiles

Profile is a way to add more vertex metadata (for instance, `color` and `uv`) and can be done directly by using the overloaded Buffer4.AddVertex

> [!CAUTION]
> Adding a vertex profile is possible but not fully supported and there's a chance that this behaviour changed in future version

> [!NOTE]
> Even you specify profile to the buffer, It won't work if @Engine4.Renderer4.Profile is set to `none`

> [!TIP]
> You can check @Engine4.Buffer4.useProfile to see if adding profiles are necessary.