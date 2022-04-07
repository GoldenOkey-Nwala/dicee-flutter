import 'package:dice/dice_page.dart';
import "package:flutter/material.dart";
    
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    var next = const Duration(seconds: 5);
    Future.delayed(next, () {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => const DicePage()),
            (route) => false,
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: Colors.limeAccent[400],
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Welcome to Dice App',
          style: TextStyle(color: Colors.black, fontSize: 36, fontWeight: FontWeight.w400, fontFamily: 'Pacifico'),
          ),
          const SizedBox(height: 25),
          Image.asset('images/dice.png',
            width: 250,
          )
        ],
      ),
    ),
  );
}
