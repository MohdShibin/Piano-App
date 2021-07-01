import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pocket_piano/sections/pianoButton.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight],
  ).then((_) {
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              width: screenWidth,
              child: Center(
                child: Text(
                  "Pocket Piano",
                  style: TextStyle(
                    fontFamily: 'Sail',
                    decoration: TextDecoration.none,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Stack(
              children: [
                Row(
                  children: [
                    PianoButton(),
                    PianoButton(),
                    PianoButton(),
                    PianoButton(),
                    PianoButton(),
                    PianoButton(),
                    PianoButton(),
                    PianoButton(),
                    PianoButton(),
                    PianoButton(),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: screenWidth / 26,
                    ),
                    PianoButton(
                      isWhiteKey: false,
                    ),
                    PianoButton(
                      isWhiteKey: false,
                    ),
                    SizedBox(
                      width: screenWidth / 13,
                    ),
                    PianoButton(
                      isWhiteKey: false,
                    ),
                    PianoButton(
                      isWhiteKey: false,
                    ),
                    PianoButton(
                      isWhiteKey: false,
                    ),
                    SizedBox(
                      width: screenWidth / 13,
                    ),
                    PianoButton(
                      isWhiteKey: false,
                    ),
                    PianoButton(
                      isWhiteKey: false,
                    ),
                    SizedBox(
                      width: screenWidth / 26,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
