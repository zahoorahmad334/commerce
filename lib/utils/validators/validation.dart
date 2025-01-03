

class TValidator {
  /// Empty Text Validation
  static String? validateEmptyText(String? fieldName, String? value) {
    if (value == null || value.isEmpty) {
      return '$fieldName is required';
    }
    return null;
  }
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required.';
    }

    // Regular expression for email validation
    final emailRegExp = RegExp( r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

    if (!emailRegExp.hasMatch(value)) {
      return 'Invalid email address.';
    }

    return null;
  }

  static String? validatePassword(String? value) {
    if (value  == null || value.isEmpty) {
      return 'Password is required';
    }

    // Check for minimum password length
    if (value.length < 6) {
      return 'Password must be at least 6 character long';
    }

    // Check for uppercase
    if (!value.contains(RegExp(r'[0-9]'))) {
      return 'Password must contain at least onr number';
    }

    // Check for special characters
    if (!value.contains(RegExp(r'[!@#$%^&*()":,.{}|<>]'))) {
      return 'Password must contain at least one special character.';
    }
    return null;
  }


  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Phone number is required';
    }

    // Regular expression for phone number validation (assuming a 10-digit PAk phone number format)
    final phoneRegExp = RegExp(r'^\d{11}$');

    if (!phoneRegExp.hasMatch(value)) {
      return 'Invalid phone number format(10 digit required).';
    }

    return null;
  }

// Add more custom validators as needed for your specific required
}