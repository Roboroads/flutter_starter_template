# Roboroads' Flutter starter template

I use this to start a new flutter project.

## Tech stack

- Routing with [AutoRoute](https://pub.dev/packages/auto_router)
- I18n with [Slang](https://pub.dev/packages/slang)
- Dependency Injection with [GetIt](https://pub.dev/packages/get_it) and [Injectable](https://pub.dev/packages/injectable)
- [PlatformWidgets](https://pub.dev/packages/flutter_platform_widgets)
- [Bloc](https://pub.dev/packages/flutter_bloc) & [Equatable](https://pub.dev/packages/equatable)
- [DotEnv](https://pub.dev/packages/flutter_dotenv)


## Installation

First, create a new flutter project. Then run the following commands for your os:

**Linux/MacOS**

```bash
git clone https://github.com/Roboroads/flutter_starter_template.git
rm -r lib flutter_starter_template/.* flutter_starter_template/README.md flutter_starter_template/pubspec.lock
mv flutter_starter_template/* .
rm -r flutter_starter_template
make init # you need make for this!
```

**Windows Powershell**

```powershell
git clone https://github.com/Roboroads/flutter_starter_template.git
Remove-Item 'lib' -Recurse
Remove-Item 'flutter_starter_template/.*' -Recurse
Remove-Item 'flutter_starter_template/README.md'
Remove-Item 'flutter_starter_template/pubspec.lock'
Move-Item -Path 'flutter_starter_template/*' -Destination .
Remove-Item 'flutter_starter_template' -Recurse
make init # you need make for this!
```

### Pubspec

Now, in pubspec.yaml, replace the following lines to reflect your project:

```yaml
name: flutter_starter_tempalte
description: "Flutter starter template"
```
