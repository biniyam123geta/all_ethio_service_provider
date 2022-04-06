import 'package:flutter/material.dart';
import 'package:all_ethio_service_provider/ui/screens/StartScreen.dart';
// import 'package:dating/ui/screens/top_navigation_screen.dart';
import 'package:all_ethio_service_provider/utils/constants.dart';
import 'package:all_ethio_service_provider/utils/shared_preferences_utils.dart';

class SplashScreen extends StatefulWidget {
  static const String id = 'splash_screen';

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    checkIfUserExists();
  }

  Future<void> checkIfUserExists() async {
    String userId = await SharedPreferencesUtil.getUserId();
    Navigator.pop(context);
    if (userId != null) {
     // Navigator.pushNamed(context, TopNavigationScreen.id);
           Navigator.pushNamed(context, StartScreen.id);
    } else {
      Navigator.pushNamed(context, StartScreen.id);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: kDefaultPadding,
          child: Container(),
        ),
      ),
    );
  }
}
