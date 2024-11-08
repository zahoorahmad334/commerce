import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../data/repository/authentication/authentication_repository.dart';
import '../../../../data/repository/user/user_repository.dart';
import '../../../../utils/constant/image_strings.dart';
import '../../../../utils/helpers/loaders.dart';
import '../../../../utils/helpers/network_manager.dart';
import '../../../../utils/popups/full_screen_loader.dart';
import '../../../shop/models/user_model.dart';
import '../../screens/signup/verify_email.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  /// Variables
  final hidePassword = true.obs; // Observable for hiding.showing password
  final privacyPrivacy = true.obs; // observable for policy acceptance
  final email = TextEditingController(); // controller for email input
  final lastName = TextEditingController(); // controller for last name input
  final username = TextEditingController(); // controller for username input
  final password = TextEditingController(); // controller for password input
  final firstName = TextEditingController(); // controller for first name input
  final phoneNumber = TextEditingController(); // controller for phone number
  GlobalKey<FormState> signupFormkey =
  GlobalKey<FormState>(); // Form key for form validation

  /// --- SignUp
  void signup() async {
    try {
      // start Loading
      TFullScreenLoader.openLoadingDialog(
          'We are processing your information...', TImages.docerAnimation);

      // Check Internet Connection
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        // Remove Loader
        TFullScreenLoader.stopLoading();
        return;
      }

      // Form Validation
      if (!signupFormkey.currentState!.validate()) {
        // Remove Loader
        TFullScreenLoader.stopLoading();
        return;
      }

      // Privacy Policy Check
      if (!privacyPrivacy.value) {
        TLoaders.warningSnackBar(
          title: 'Accept Privacy Policy',
          message:
          'In order to create account, you must have to read and accept the Privacy Policy & Terms of Use',
        );
        return;
      }

      // Register user in the Firebase Authentication & Save user date in the Firebase
      final userCredential = await AuthenticationRepository.instance
          .registerWithEmailAndPassword(
          email.text.trim(), password.text.trim());

      // Save Authenticated user data in the Firebase Firestore
      final newUser = UserModel(
        id: userCredential.user!.uid,
        firstName: firstName.text.trim(),
        lastName: lastName.text.trim(),
        username: username.text.trim(),
        email: email.text.trim(),
        phoneNumber: phoneNumber.text.trim(),
        profilePicture: '',
      );

      final userRepository = Get.put(UserRepository());
      await userRepository.saveUserRecord(newUser);

      // Remove Loader
      TFullScreenLoader.stopLoading();

      // Show Success Message
      TLoaders.successSnackBar(
          title: 'Congratulations',
          message: 'Your account has been created! Verify email to continue.');

      // Move to verify
      Get.to(() => VerifyEmailScreen(email: email.text.trim()));
    } catch (e) {
      // Remove Loader
      TFullScreenLoader.stopLoading();

      // Show some Generic error to the user
      TLoaders.errorSnackBar(title: 'oh Snap!', message: e.toString());
    }
  }
}
