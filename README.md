# Smalls.Online Dotnet Templates

This repository contains my own personal templates to use with `dotnet new`.

## Templates Included

### SmallsOnline.Csharp.ClassLib

A bare-bones C# class library.

#### Short name

`smallsonline-classlib`

#### Template structure

```
DirectoryName/
|
|___helpers/
|   |___Helper.cs
|
|___models/
|   |___Model.cs
|
|___DirectoryName.csproj
```

## Creating the templates package

### `dotnet` CLI

```
dotnet pack --configuration "Release" --output ".\_build\"
```

### PowerShell

```powershell
.\createPkg.ps1
```

The output will be located in the `.\_build\` folder.

### VSCode Build Task

You can create the package in Visual Studio code by running the build task.

- Use the **Run Build Task** shortcut key combo:
  - **Windows/Linux**: `Shift + Ctrl + B`
  - **macOS**: `Shift + Command + B`
- Run the build task from the command palette:
  1. Open the command palette
     - **Windows/Linux**: `Shift + Ctrl + P`
     - **macOS**: `Shift + Command + P`
  2. Type in `Tasks: Run Build Task` and press the `Enter` key.
- Run the task from the command palette:
  1. Open the command palette
     - **Windows/Linux**: `Shift + Ctrl + P`
     - **macOS**: `Shift + Command + P`
  2. Type in `Tasks: Run Task` and press the `Enter` key.
  3. Select the task **Create package** and press the `Enter` key.

The output will be located in the `.\_build\` folder.

## Installing the templates package

1. Open up your terminal prompt and navigate to the cloned repo directory on your computer.
   - You can use `powershell`, `pwsh`, `cmd`, `bash`, `zsh`, etc. Just as long as you can run the `dotnet` command in it.
2. Run the following command:
   - **Windows**:
     - `dotnet new --install .\_build\SmallsOnline.Dotnet.Templates.2021.12.0.nupkg`
   - **macOS/Linux**:
     - `dotnet new --install ./_build/SmallsOnline.Dotnet.Templates.2021.12.0.nupkg`
   - ⚠️ **Note**: The `SmallsOnline.Dotnet.Templates.2021.12.0.nupkg` can be different depending on the version of the templates package itself.