import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:material_color_generator/material_color_generator.dart';

import 'core/app_router.dart';
import 'core/i18n/lang.gr.dart';
import 'core/injection.dart';
import 'core/theme/theme_colors.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  LocaleSettings.useDeviceLocale();
  configureDependencies();
  runApp(TranslationProvider(child: App()));
}

class App extends StatelessWidget {
  App({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return PlatformApp.router(
      locale: TranslationProvider.of(context).flutterLocale, // use provider
      supportedLocales: LocaleSettings.supportedLocales,
      localizationsDelegates: GlobalMaterialLocalizations.delegates,
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
      title: 'Rijksmuseum',
      material: (_, __) => MaterialAppRouterData(
          theme: ThemeData(
        primarySwatch: generateMaterialColor(color: ThemeColors.primary),
      )),
      cupertino: (_, __) => CupertinoAppRouterData(
        theme: const CupertinoThemeData(
          primaryColor: ThemeColors.primary,
        ),
      ),
    );
  }
}
