/// Exception class for handling various platform-related errors
class TPlatformException implements Exception {
  final String code;

  TPlatformException(this.code);

  String get message {
    switch (code) {
      case 'INVALID_LOGIN_CREDENTIAL':
        return 'Invalid login credentials. Please double-check your information.';
      case 'too-many-request':
        return 'Too many requests. Please try again later.';
      case 'invalid-arguments':
        return 'Invalid argument provided to the authentication method.';
      case 'invalid-password':
        return 'Incorrect password. Please try again.';
      case 'invalid-phone-number':
        return 'The provided phone number is invalid.';
      case 'operation-not-allowed':
        return 'The sign-in provider is disabled for your Firebase project.';
      case 'session-cookie-expired':
        return 'The Firebase session cookie has expired. Please sign in again.';
      case 'uid-already-exists':
        return 'The provided user ID is already in use by another user.';
      case 'sign_in_failed':
        return 'Sign-in failed. Please try again.';
      case 'network-request-failed':
        return 'Network request failed. Please check your internet connection.';
      case 'internal-error':
        return 'Internal error. Please try again later.';
      case 'invalid-verification-code':
        return 'Invalid verification code. Please enter a valid code.';
      case 'email-already-exists':
        return 'The email address is already in use by another account.';
      case 'missing-permissions':
        return 'The operation could not be completed due to missing permissions.';
      case 'quota-exceeded':
        return 'Quota exceeded. Please try again later or contact support.';
      case 'timeout':
        return 'The request has timed out. Please check your connection and try again.';
      case 'account-disabled':
        return 'Your account has been disabled. Please contact support.';
      case 'user-token-expired':
        return 'The user token has expired. Please log in again.';
      case 'invalid-api-key':
        return 'The provided API key is invalid or expired.';
      case 'unsupported-platform':
        return 'The requested operation is not supported on this platform.';
      case 'account-exists-with-different-credential':
        return 'An account already exists with the same email address but different sign-in credentials.';
      case 'no-internet-connection':
        return 'No internet connection. Please check your network settings and try again.';
      case 'token-revoked':
        return 'The user’s token has been revoked. Please log in again.';
      case 'service-unavailable':
        return 'The service is currently unavailable. Please try again later.';
      case 'invalid-api-call':
        return 'The API call is invalid or malformed.';
      case 'keychain-error':
        return 'An error occurred accessing the keychain. Please try again.';
      default:
        return 'An unknown platform error occurred. Please try again.';
    }
  }
}
