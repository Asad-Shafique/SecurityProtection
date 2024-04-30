import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

/// A controller class for the LoginScreen.
///
/// This class manages the state of the LoginScreen, including the
/// current loginModelObj
class SignupController extends GetxController {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final Rx<bool> isLoading = Rx<bool>(false);
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  @override
  void onClose() {
    super.onClose();
    // usernameController.dispose();
    // nameController.dispose();
    // nameController.dispose();
    // emailController.dispose();
    // phoneNumberController.dispose();
    // passwordController.dispose();
  }

  signUp() async {
    isLoading.value = true;
    try {
      if (usernameController.text.isEmpty ||
          nameController.text.isEmpty ||
          emailController.text.isEmpty ||
          phoneNumberController.text.isEmpty ||
          passwordController.text.isEmpty) {
        showSnackbar('Error', 'Please input all fields');
      } else {
        UserCredential userCredential =
            await _auth.createUserWithEmailAndPassword(
          email: emailController.text,
          password: passwordController.text,
        );

        print('credentials created');
        // Save additional user data to Firestore
        await _firestore.collection('users').doc(userCredential.user!.uid).set({
          'username': usernameController.text,
          'name': nameController.text,
          'phoneNumber': phoneNumberController.text,
          'email': emailController.text,
        });
        isLoading.value = false;

        usernameController.text = "";
        nameController.text = "";
        passwordController.text = "";
        emailController.text = "";
        phoneNumberController.text = "";
        Get.toNamed(AppRoutes.loginScreen);
      }
    } catch (err) {
      showSnackbar('Error', err.toString());
      print(err);
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
