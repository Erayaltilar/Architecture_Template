import 'package:architecture_template/feature/home/view/home_detail_view.dart';
import 'package:architecture_template/feature/home/view/home_view.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

part 'app_router.gr.dart';

//Project router information class
@AutoRouterConfig(replaceInRouteName: 'View,Route')
final class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page, initial: true),
        AutoRoute(page: HomeDetailRoute.page),
      ];
}
