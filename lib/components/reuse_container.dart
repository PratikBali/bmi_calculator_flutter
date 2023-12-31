import '../import.dart';

class ReuseContainer extends StatelessWidget {
  final Color colour;
  final Widget cardChild;
  final Function onPress;

  ReuseContainer(this.colour, this.cardChild, this.onPress);


  void clickMe() {
    onPress();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        clickMe();
      },
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            color: colour,
            borderRadius: BorderRadius.circular(10.0)),
      ),
    );
  }
}
