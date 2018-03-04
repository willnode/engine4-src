
# Engine4 Documentation Source.

This repo is the source files of [Engine4](http://u3d.as/fdm) documentation. You may look for [generated documentation here](http://github.com/willnode/engine4-doc).

This documentation is generated using [DocFX](https://dotnet.github.io/docfx).

## Building Locally

Assuming you're using Windows:

1. Clone this repo: `git clone git://github.com/willnode/engine4-src/`

2. Install [DocFX](https://dotnet.github.io/docfx/tutorial/docfx_getting_started.html#2-use-docfx-as-a-command-line-tool). It's also recommended to install this via [choco](https://chocolatey.org/install) `choco install docfx -y`.

3. Create empty project with name `Engine4`, import [Engine4 assets](http://u3d.as/fdm), then `Open C# Project` with Visual Studio.

> At this point you should not import other files or scripts.

4. Set build type to `Release` and enable [documentation generation](https://ewsoftware.github.io/XMLCommentsGuide/html/57C91630-95D6-4E3E-AF24-3415CC569AC8.htm) for `Engine4.Plugins` project to `Temp\UnityVS_bin\Release\Assembly-CSharp-firstpass.xml`. You can also directly edit the `.csproj` file under the build settings:

```xml
<DocumentationFile>Temp\UnityVS_bin\Release\Assembly-CSharp-firstpass.xml</DocumentationFile>
```

5. Build `Engine4.Plugins`. At this time you should see these files under `Temp\UnityVS_bin\Release\`:

```
Assembly-CSharp-firstpass.dll
Assembly-CSharp-firstpass.pdb
Assembly-CSharp-firstpass.xml
```

Copy these files to folder `src` on the cloned repo.

6. Open [buildclean.bat](buildclean.bat) or `docfx --serve`.

7. Generate PDF: `choco install wkhtmltopdf -y` then `docfx --pdf`.
