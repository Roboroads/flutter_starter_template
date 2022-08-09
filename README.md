# Roboroads' Flutter starter template

I use this to start a new flutter project.

## Installation

First, create a new flutter project. Then run the following commands:

### Linux/MacOS

```bash
git clone https://github.com/Roboroads/flutter_starter_template.git
rm -r lib flutter_starter_template/.git flutter_starter_template/.README.md
mv flutter_starter_template/* .
rm -r flutter_starter_template
```

### Windows Powershell

```powershell
git clone https://github.com/Roboroads/flutter_starter_template.git
Remove-Item 'lib' -Recurse
Remove-Item 'flutter_starter_template/.git' -Recurse
Remove-Item 'flutter_starter_template/.README.md'
Move-Item -Path 'flutter_starter_template/*' -Destination .
Remove-Item 'flutter_starter_template/.git' -Recurse
```

### Pubspec

Now, in pubspec.yaml, replace the following lines to reflect your project:

```yaml
name: flutter_starter_tempalte
description: "Flutter starter template"
```