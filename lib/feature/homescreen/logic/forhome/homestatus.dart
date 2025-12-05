abstract class Homestatue {}

final class HomeInitialState extends Homestatue {
 
}
final class ChangeScreen extends Homestatue {
   final int index;
  ChangeScreen({required this.index});
}

final class GoToStatuScreen extends Homestatue {}

final class GoToCallScreen extends Homestatue {}

final class GoToChatScreen extends Homestatue {}
