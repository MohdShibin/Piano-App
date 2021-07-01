import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PianoButton extends StatelessWidget {
  final bool isWhiteKey;

  PianoButton({
    this.isWhiteKey = true,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return isWhiteKey
        ? Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                bottom: 4,
                left: 1,
                right: 1,
              ),
              child: Material(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(8),
                  bottomLeft: Radius.circular(8),
                ),
                color: Colors.white,
                child: InkWell(
                  highlightColor: Colors.grey,
                  onTap: () {
                    print("clicked");
                  },
                ),
              ),
            ),
          )
        : SizedBox(
            width: screenWidth / 13,
            height: screenHeight / 2,
            child: Material(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(8),
                  bottomLeft: Radius.circular(8),
                ),
              ),
              elevation: 6,
              color: Colors.black,
              child: InkWell(
                splashColor: Colors.white60,
                onTap: () {
                  print("black clicked");
                },
              ),
            ),
          );
  }
}
