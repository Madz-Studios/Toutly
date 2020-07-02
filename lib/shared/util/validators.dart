///Validators for email and password
class Validators {
  ///regular expression to check if the email is valid
  RegExp emailRegExp() {
    return RegExp(
      r'^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$',
    );
  }

  ///check if the email is valid
  bool isValidEmail(String email) {
    return emailRegExp().hasMatch(email);
  }

  ///check if the password is valid
  bool isValidPassword(String password) {
    return password.length >= 8 && password.length <= 16;
  }

  bool isValidTextLength4To30Chars(String text) {
    return text.length >= 4 && text.length <= 30;
  }

  bool isValidTextLengthMoreThanOrEqualToFourChars(String text) {
    return text.length >= 4;
  }
}
