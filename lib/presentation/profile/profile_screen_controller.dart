import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

/// A controller class for the LoginScreen.
///
/// This class manages the state of the LoginScreen, including the
/// current loginModelObj
class ProfileController extends GetxController {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final Rx<bool> isLoading = Rx<bool>(false);
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final PrefUtils prefUtils = PrefUtils();

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
    loadUer();
  }

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

  void loadUer() async {
    try {
      String? email = await prefUtils.retrieveData('email');
      getDataByEmail(email!);
    } catch (e) {}
  }

  void logout() {
    try {
      isLoading.value = true;
      prefUtils.storeData('email', '');
      isLoading.value = false;
      Get.offAllNamed(AppRoutes.initialRoute);
    } catch (e) {
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

  Future<void> getDataByEmail(String email) async {
    // Reference to the Firestore collection
    CollectionReference users = FirebaseFirestore.instance.collection('users');

    try {
      // Query for documents where the email field matches the provided email
      QuerySnapshot querySnapshot =
          await users.where('email', isEqualTo: email).get();

      // Check if any documents match the query
      if (querySnapshot.docs.isNotEmpty) {
        // Iterate over the documents and access their data
        querySnapshot.docs.forEach((doc) {
          // Access the data fields
          String username = doc['username'];
          String name = doc['name'];
          String phoneNumber = doc['phoneNumber'];
          String email = doc['email'];
          nameController.text = username;
          phoneNumberController.text = phoneNumber;
          usernameController.text = username;
          emailController.text = email;

          // Do something with the retrieved data
          print('Username: $username, Name: $name, Phone Number: $phoneNumber');
        });
      } else {
        // No documents found that match the query
        print('No user found with email: $email');
      }
    } catch (e) {
      // Handle any errors that occur during the query
      print('Error getting user data: $e');
    }
  }
}
