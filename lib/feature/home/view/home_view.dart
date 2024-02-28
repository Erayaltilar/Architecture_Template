import 'package:architecture_template/feature/home/view/mixin/home_view_mixin.dart';
import 'package:architecture_template/product/init/config/app_environment.dart';
import 'package:architecture_template/product/init/language/locale_keys.g.dart';
import 'package:architecture_template/product/init/product_localization.dart';
import 'package:architecture_template/product/navigation/app_router.dart';
import 'package:architecture_template/product/utility/constants/enums/locales.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gen/gen.dart';

part 'widget/home_app_bar.dart';

@RoutePage()
final class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with HomeViewMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const _HomeAppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Assets.image.imgFlags.image(
            package: 'gen',
          ),
          Assets.lottie.animZombie.lottie(
            package: 'gen',
          ),
          Assets.icons.icLove.svg(
            package: 'gen',
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(AppEnvironmentItems.baseUrl.value),
          ),
          const Text('Change Language'),
          ElevatedButton(
            onPressed: () {
              context.router.push(HomeDetailRoute(id: '1'));
              ProductLocalization.updateLanguage(context, Locales.tr);
            },
            child: const Text(
              LocaleKeys.general_button_save,
            ).tr(
              args: ['Eray'],
            ),
          ),
        ],
      ),
    );
  }
}
