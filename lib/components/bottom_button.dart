import '../import.dart';

class BottomButton extends StatelessWidget {
  BottomButton(this.buttonTitle, this.onTap);

  final Function onTap;
  final String buttonTitle;

  void clickMe() {
    onTap();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:  () {
        clickMe();
      },
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: kLargeButtonTextStyle,
          ),
        ),
        color: kNormalPink,
        // margin: EdgeInsets.only(top: 10.0),
        // padding: EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}
