import 'package:delivery_app_cliente/features/authentication/screens/login/login.dart';
import 'package:delivery_app_cliente/features/authentication/screens/onboarding/onboarding.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get_storage/get_storage.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  // Variable
  final deviceStorage = GetStorage();

  // Called from main.dart on app launch
  @override
  void onReady(){
    FlutterNativeSplash.remove();
    screenRedirect();
  }

  // Function to show relevant Screen
  screenRedirect() async{
    // Local storage
    deviceStorage.writeIfNull('IsFirstTime', true);
    deviceStorage.read('IsFirstTime') != true 
        ? Get.offAll(() => const LoginScreen()) 
        : Get.offAll(const OnBoardingScreen());
  }
}