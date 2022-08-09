import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '/presentation/pages/overview_page.dart';

part 'app_router.gr.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Route',
  routes: <AutoRoute>[
    AutoRoute(page: OverviewPage, initial: true),
  ],
)
// extend the generated private router
class AppRouter extends _$AppRouter {}
