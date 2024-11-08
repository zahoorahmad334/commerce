/// Custom exception class to handle various Firebase authentication-related errors.
library;

class TFirebaseAuthException implements Exception {
  /// The errors code associated with the exception.
  final String code;

  /// Constructor that takes an error code.
  TFirebaseAuthException(this.code);

  /// Get the corresponding error message based on the error code.
  String get message {
    switch (code) {
      case 'email-already-in-use':
        return 'The email address is already registered. Please use a different email.';
      case 'invalid-email':
        return 'The email address provided is invalid. Please enter a valid email.';
      case 'weak-password':
        return 'The password is too weak. Please choose a strong password.';
      case 'user-disabled':
        return 'The user account has been disabled. Please contact support for assistance.';
      case 'user-not-found':
        return 'Invalid login details. User not found.';
      case 'wrong-password':
        return 'Incorrect password. Please check your password and try again.';
      case 'invalid-verification-code':
        return 'Invalid verification code. Please enter a valid code.';
      case 'invalid-verification-id':
        return 'Invalid verification ID. Please request a new verification code.';
      case 'quota-exceeded':
        return 'Quota exceeded. Please try again later.';
      case 'email-already-exists':
        return 'The email address already exists. Please use a different email.';
      case 'provider-already-linked':
        return 'The account is already linked with another provider.';
      case 'requires-recent-login':
        return 'This operation is sensitive and requires recent authentication. Please log in again.';
      case 'credential-already-in-use':
        return 'This credential is already associated with a different user account.';
      case 'invalid-phone-number':
        return 'The phone number provided is not valid.';
      case 'missing-phone-number':
        return 'Please provide a phone number.';
      case 'session-expired':
        return 'The session has expired. Please request a new verification code.';
      case 'unverified-email':
        return 'The email address has not been verified. Please verify your email before proceeding.';
      case 'user-mismatch':
        return 'The supplied credentials do not correspond to the previously signed-in user.';
      case 'invalid-credential':
        return 'The credential provided is malformed or has expired.';
      case 'operation-not-allowed':
        return 'This operation is not allowed. Please enable it in the Firebase Console.';
      case 'too-many-requests':
        return 'Too many attempts have been made to log in. Please try again later.';
      case 'expired-action-code':
        return 'The action code has expired. Please request a new one.';
      case 'invalid-action-code':
        return 'The action code is invalid. Please request a new one.';
      case 'account-exists-with-different-credential':
        return 'An account already exists with the same email address but different sign-in credentials.';
      case 'network-request-failed':
        return 'A network error occurred. Please check your internet connection and try again.';
      case 'app-not-authorized':
        return 'This app is not authorized to use Firebase Authentication.';
      case 'captcha-check-failed':
        return 'Captcha verification failed. Please try again.';
      case 'missing-email':
        return 'Email address is missing. Please provide a valid email.';
      case 'popup-blocked':
        return 'The authentication popup was blocked by the browser. Please allow popups and try again.';
      case 'popup-closed-by-user':
        return 'The authentication popup was closed before completion. Please try again.';
      case 'unverified-phone-number':
        return 'The phone number has not been verified. Please verify it before proceeding.';
      case 'weak-credential':
        return 'The provided credential is too weak. Please use a stronger one.';
      default:
        return 'An unknown error occurred. Please try again.';
    }
  }
}