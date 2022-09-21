import 'package:dio/dio.dart';
import 'package:get/get.dart';

class Viewmodel extends GetxController {
  bool isLoading = false;
  bool isInit = false;

  void setLoading(bool value) {
    isLoading = value;
    update();
  }

  Future<void> runLoading(Function callback) async {
    if (isLoading) return;
    setLoading(true);
    try {
      await callback();
    } on Error catch (error) {
      print(error.stackTrace);
      showMessageError(error);
    } finally {
      setLoading(false);
    }
  }

  void setInit(bool value) {
    isInit = value;
    update();
  }

  Future<void> runInit(Function callback) async {
    if (isLoading) return;
    setInit(false);
    try {
      await callback();
    } on DioError catch (error) {
      print(error.stackTrace);
    } on Error catch (error) {
      showMessageError(error);
    } finally {
      setInit(true);
    }
  }

  showMessageError(Error error) {
    print(error);
    print(error.stackTrace);
    if (Get.isSnackbarOpen == null) return;

    return Get.rawSnackbar(
        title: "Unexpected Error", message: error.toString());
  }
}
