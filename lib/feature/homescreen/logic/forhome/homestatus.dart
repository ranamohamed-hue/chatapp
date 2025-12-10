abstract class Homestatue {}

final class HomeInitialState extends Homestatue {
 
}
final class ChangeScreen extends Homestatue {
   final int index;
  ChangeScreen({required this.index});
}


