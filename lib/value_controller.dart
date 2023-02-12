import 'package:get/get.dart';

class ValueController extends GetxController {
  
  RxString definidedValue = "".obs;

  RxBool isLoading = false.obs;

  Future<void> setValue(String value) async {
    isLoading.value = true;

    await Future.delayed(const Duration(seconds: 2));

    definidedValue.value = value;
    isLoading.value = false;

  }
}
