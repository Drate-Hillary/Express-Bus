import 'package:express_administrator/common/widgets/layout/templates/site_layout.dart';
import 'package:express_administrator/routes/app_route.dart';
import 'package:express_administrator/routes/routes.dart';
import 'package:express_administrator/utils/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: AppTheme.lightTheme,
      getPages: AppRoute.pages,
      initialRoute: AppRoutes.login,
      unknownRoute: GetPage(
        name: "/page-not-found",
        page: () => Scaffold(
          body: Center(
            child: Text(
              "Page not Found",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
        ),
      ),
    );
  }
}

class ResponsiveDesign extends StatelessWidget {
  const ResponsiveDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return SiteLayout(
      desktop: Center(
        child: Text("Desktop dashboard....", style: Theme.of(context).textTheme.headlineLarge,),
      ),
      tablet: Center(
        child: Text("Tablet dashboard....", style: Theme.of(context).textTheme.headlineLarge,),
      ),
      mobile: Center(
        child: Text("Mobile dashboard....", style: Theme.of(context).textTheme.headlineLarge,),
      ),
    );
  }
}