import './import.dart';

enum Gender { male, female, none }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = kDarkBlue;
  Color femaleCardColor = kDarkBlue;

  Gender selectedGender = Gender.none;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                child: ReuseContainer(
                  selectedGender == Gender.male ? kDarkGrey : kDarkBlue,
                  ReuseIconText(FontAwesomeIcons.mars, 'MALE'),
                  () => {
                    setState(() {
                      selectedGender = Gender.male;
                    })
                  },
                )
              ),
              Expanded(
                child: ReuseContainer(
                  selectedGender == Gender.female ? kDarkGrey : kDarkBlue,
                  ReuseIconText(FontAwesomeIcons.venus, 'FEMALE'),
                  () => {
                    setState(() {
                      selectedGender = Gender.female;
                    })
                  },
                )
              )
            ],
          )),
          Expanded(child: ReuseContainer(kDarkBlue, Container(),
                () => {
              setState(() {
                print('middle button');
              })
            },
          )),
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(child: ReuseContainer(kDarkBlue, Container(),
                    () => {
                  setState(() {
                    print('bootom left button');
                  })
                },
              )),
              Expanded(child: ReuseContainer(kDarkBlue, Container(),
                    () => {
                  setState(() {
                    print('bottom right button');
                  })
                },
              ))
            ],
          )),
          Container(
            color: kDarkPink,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: 40.0,
          ),
        ],
      ),
    );
  }
}
