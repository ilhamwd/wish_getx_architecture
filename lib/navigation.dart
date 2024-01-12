import 'package:get/route_manager.dart';
import 'package:kios_sehat_device/presentation/bindings/home_binding.dart';
import 'package:kios_sehat_device/presentation/views/home_screen.dart';
import 'package:kios_sehat_device/utils/routes.dart';

abstract class Navigation {
  static List<GetPage> pages = [
    GetPage(
        name: Routes.home,
        binding: HomeBinding(),
        page: () => const HomeScreen())
  ];
}
