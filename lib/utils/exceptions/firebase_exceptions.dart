/// Custom exception class to handle various Firebase-related errors
library;


class TFirebaseException implements Exception {
  /// The error code associated with the exception.
  final String code;

  /// Constructor that takes an error code.
  TFirebaseException(this.code);

  /// Get the corresponding error message based on the error code.
  String get message {
    switch (code) {
      case 'unknown':
        return 'An unknown Firebase error occurred. Please try again.';
      case 'invalid-custom-token':
        return 'The custom token format is incorrect. Please check your custom token.';
      case 'custom-token-mismatch':
        return 'The custom token corresponds to a different Firebase project.';
      case 'invalid-user-token':
        return 'The user token is invalid or has expired. Please sign in again.';
      case 'invalid-email':
        return 'The email address provided is invalid. Please enter a valid email.';
      case 'user-disabled':
        return 'The user account has been disabled by an administrator.';
      case 'invalid-password':
        return 'The password is invalid or the user does not have a password.';
      case 'wrong-password':
        return 'Incorrect password. Please check your password and try again.';
      case 'email-already-in-use':
        return 'The email address is already in use by another account.';
      case 'weak-password':
        return 'The password provided is too weak. Please choose a stronger password.';
      case 'requires-recent-login':
        return 'This operation is sensitive and requires recent authentication. Please log in again.';
      case 'missing-email':
        return 'The email address is missing. Please provide an email address.';
      case 'credential-already-in-use':
        return 'The credential is already associated with a different user account.';
      case 'invalid-verification-code':
        return 'The verification code is invalid. Please enter a valid code.';
      case 'invalid-verification-id':
        return 'The verification ID is invalid. Please request a new verification code.';
      case 'expired-action-code':
        return 'The action code has expired. Please request a new one.';
      case 'invalid-action-code':
        return 'The action code is invalid. Please request a new one.';
      case 'app-not-authorized':
        return 'This app is not authorized to use Firebase services.';
      case 'captcha-check-failed':
        return 'Captcha verification failed. Please try again.';
      case 'session-cookie-expired':
        return 'The session cookie has expired. Please sign in again.';
      case 'internal-error':
        return 'An internal error occurred. Please try again later.';
      case 'invalid-tenant-id':
        return 'The tenant ID provided is invalid. Please check the tenant ID.';
      case 'multi-factor-auth-required':
        return 'Multi-factor authentication is required to complete this action.';
      case 'email-change-needs-verification':
        return 'Please verify your email address before changing it.';
      case 'phone-number-already-exists':
        return 'The phone number is already associated with another account.';
      case 'network-request-failed':
        return 'A network error occurred. Please check your internet connection and try again.';
      case 'too-many-requests':
        return 'Too many requests have been made in a short period. Please try again later.';
      case 'account-exists-with-different-credential':
        return 'An account already exists with the same email address but different sign-in credentials.';
      case 'admin-restricted-operation':
        return 'This operation is restricted to administrators only.';
      case 'maximum-user-count-exceeded':
        return 'The maximum number of users has been exceeded. Please contact support.';
      case 'auth-domain-config-required':
        return 'Authentication configuration is missing or invalid. Please check the Firebase Console.';
      case 'dynamic-link-not-activated':
        return 'Dynamic links are not activated for this project.';
      case 'missing-android-pkg-name':
        return 'The Android package name is missing for the dynamic link.';
      case 'missing-ios-bundle-id':
        return 'The iOS bundle ID is missing for the dynamic link.';
      case 'missing-continue-uri':
        return 'The continue URL is missing in the dynamic link request.';
      case 'invalid-continue-uri':
        return 'The continue URL provided in the request is invalid.';
      case 'unauthorized-continue-uri':
        return 'The domain of the continue URL is not authorized. Please check the Firebase Console.';
      case 'user-not-found':
        return 'No user record corresponding to this identifier. The user may have been deleted.';
      case 'no-such-provider':
        return 'User has not signed up with this authentication provider.';
      case 'invalid-recipient-email':
        return 'The recipient email address is invalid. Please enter a valid email.';
      case 'invalid-message-payload':
        return 'The message payload is invalid. Please verify your message content.';
      case 'third-party-auth-error':
        return 'An error occurred with the third-party authentication provider. Please try again.';
      case 'tenant-id-mismatch':
        return 'The tenant ID does not match the current session.';
      default:
        return 'An unknown Firebase error occurred. Please try again.';
    }
  }
}
