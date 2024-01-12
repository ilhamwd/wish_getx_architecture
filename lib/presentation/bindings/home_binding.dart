import 'package:get/get.dart';
import 'package:kios_sehat_device/presentation/controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(HomeController());
  }
}
