import 'package:get/get.dart';

class ValueController extends GetxController {
  String definidedValue = "";

  bool isLoading = false;

  Future<void> setValue(String value) async {
    isLoading = true;
    update();

    await Future.delayed(const Duration(seconds: 2));

    definidedValue = value;
    isLoading = false;

    update();
  }
}
