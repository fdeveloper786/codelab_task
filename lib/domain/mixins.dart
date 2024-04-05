// This mixin, named FormFieldValidators, provides common validation functions for form fields like username and password.

mixin FormFieldValidators {

  /// This method validates the username field.
  String? usernameValidator(String? value) {
    // Checking if the value is null or empty.
    if (value == null || value.isEmpty) {
      // Returning an error message if the username is empty.
      return 'Username is required';
    }
    // Returning null if the username is not empty, indicating no validation error.
    return null;
  }

  /// This method validates the password field.
  String? passwordValidator(String? value) {
    // Checking if the value is null or empty.
    if (value == null || value.isEmpty) {
      // Returning an error message if the password is empty.
      return 'Password is required';
    }
    // Returning null if the password is not empty, indicating no validation error.
    return null;
  }
}
