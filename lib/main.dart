import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/route_manager.dart';
import 'package:kios_sehat_device/navigation.dart';
import 'package:kios_sehat_device/utils/routes.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));

    return GetMaterialApp(
      theme: ThemeData(useMaterial3: false),
      getPages: Navigation.pages,
      initialRoute: Routes.splash,
    );
  }
}
