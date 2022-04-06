import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:all_ethio_service_provider/utils/constants.dart';
class AppIconTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            child: Image.asset('images/logo.png'),
            width: 32.0,
            height: 32.0,
          ),
          SizedBox(width: 5.0),
          Text(
            'Le Guadaye',
            style: TextStyle(
              color:kAccentColor,
              fontSize: 40,
            )
          )
        ],
      ),
    );
  }
}
