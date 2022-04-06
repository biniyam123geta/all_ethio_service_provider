import 'package:all_ethio_service_provider/ui/screens/LoginVarify.dart';
import 'package:flutter/material.dart';
import 'package:all_ethio_service_provider/utils/constants.dart';
import 'package:all_ethio_service_provider/ui/widgets/app_image_with_text.dart';
import 'package:all_ethio_service_provider/ui/widgets/rounded_button.dart';
import 'package:all_ethio_service_provider/ui/widgets/rounded_outlined_button.dart';
import 'package:all_ethio_service_provider/ui/screens/login_screen.dart';
// import 'package:all_ethio_service_provider/ui/screens/register_screen.dart';

class StartScreen extends StatelessWidget {
  static const String id = 'start_screen';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: kDefaultPadding,
          child: Container(
            margin: EdgeInsets.only(bottom: 40, top: 120),
            child: Column(
              children: [
                AppIconTitle(),
                Expanded(child: Container()),
                Container(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      'le guadaye is the best way to match your expectations with the right candidates or with any domestic helpers. Post your job offer and easily access to all our candidates. Our solution is free for candidates and we do not have any hidden fees.',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ),
                ),
                SizedBox(height: 60),
                RoundedButton(
                    text: 'CREATE ACCOUNT',
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.pushNamed(context, LoginVarify.id);
                    }),
                    
                SizedBox(height: 20),
                RoundedOutlinedButton(
                  text: 'LOGIN',
                  onPressed: () => Navigator.pushNamed(context, LoginScreen.id),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
