import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../../../core/app_export.dart';

class LoginController extends GetxController {
  TextEditingController userName = TextEditingController();

  TextEditingController password = TextEditingController();
  Rx<bool> isLoading = Rx<bool>(false);
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final PrefUtils prefUtils = PrefUtils();
  @override
  void onClose() {
    super.onClose();
    // userName.dispose();
    // password.dispose();
  }

  login() async {
    isLoading.value = true;
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: userName.text,
        password: password.text,
      );
      print("User signed in: ${userCredential.user!.email}");
      prefUtils.storeData('email', userName.text);
      Get.offNamed(AppRoutes.homeOneContainerPage);
    } catch (err) {
      showSnackbar('Info', 'Invalid Credentials');
    } finally {
      isLoading.value = false;
    }
  }

  void showSnackbar(title, message) {
    Get.snackbar(
      title,
      message,
      snackPosition: SnackPosition.BOTTOM, // Adjust position as needed
      duration: Duration(seconds: 3), // Adjust the duration as needed
      backgroundColor: appTheme.blueGray400, // Customize background color
      colorText: Colors.black, // Customize text color
      borderRadius: 10, // Customize border radius
    );
  }
}
