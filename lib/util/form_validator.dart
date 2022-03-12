//

class FormValidator {
  static String? validateEmail(String? value) {
    const String pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    final RegExp regex = RegExp(pattern);
    if (!regex.hasMatch(value ?? '')) {
      return 'Enter Valid Email';
    } else {
      return null;
    }
  }

  static String? validatePassword(String? value) {
    if (value != null) {
      if (value.length < 6) {
        return 'Must be at least 6 characters';
      } else {
        return null;
      }
    }
  }
}
