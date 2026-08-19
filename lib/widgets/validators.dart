

class Validators {
  static String? validateUsername(String? value) {
    if (value == null || value.isEmpty) {
      return 'please enter your username';
    }
    return null;
  }

  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty || !value.contains('@')) {
      return 'Enter a valid email';
    }
    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter password';
    }
    if (value.length < 6) {
      return 'Password must be at least 6 characters';
    }
    if (!RegExp(r'^(?=.[a-z])(?=.[A-Z])(?=.*\d).+$').hasMatch(value)) {
      return 'Password must contain uppercase, lowercase & numbers';
    }
    return null;
  }
}