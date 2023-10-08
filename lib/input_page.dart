import './import.dart';

enum Gender { male, female, none }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Gender selectedGender = Gender.none;
  int height = 180;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
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
          Expanded(
            child: ReuseContainer(
              kDarkBlue,
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('HEIGHT',style: kLabelTextStyle),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(height.toString(),style: kNumberTextStyle),
                      Text('cm',style: kLabelTextStyle),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      thumbColor: kNormalPink,
                      overlayColor: kDarkPink,
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0)
                    ),
                    child: Slider(
                        value: height.toDouble(),
                        min: 120.0,
                        max: 220.0,
                        activeColor: kNormalPink,
                        inactiveColor: kLightGrey,
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round();
                          });
                        }
                    ),
                  )
                ],
              ),
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
            color: kNormalPink,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: 40.0,
          ),
        ],
      ),
    );
  }
}
