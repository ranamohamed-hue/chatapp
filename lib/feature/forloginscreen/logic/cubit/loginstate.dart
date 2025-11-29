abstract class Loginstate {}

final class LoginTabChange extends Loginstate {
  final bool isLogin; 
  LoginTabChange({required this.isLogin});
}

final class GoToVerificationScreen extends Loginstate {}

final class GoToHomeScreen extends Loginstate {}
