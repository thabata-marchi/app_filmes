import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  // Quando a minha tela estiver pronto quero navegar para alguma tela
  @override
  void onReady() {
    super.onReady();
    Get.offAllNamed('/login');
  }
}
