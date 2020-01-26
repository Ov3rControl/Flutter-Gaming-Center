import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import '../../animations/fadeIn.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key key}) : super(key: key);

  Widget _buildImage(String assetName) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 40, 10, 8),
      child: Align(
        child: Image.asset(
          'assets/$assetName.png',
          width: 400.0,
        ),
        alignment: Alignment.bottomCenter,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);
    const pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Color(0xffFE5003),
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: "PLAY YOUR FAVORITE GAMES",
          body:
              "Providing a Completely Unique Gaming Experience for Every Ene in the E-Sports industry",
          image: _buildImage('fortnite'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "WIN GAMES, EARN POINTS",
          body:
              "Compleletly Unqiue Points System, That Rewards Players For Winning Competitive Games",
          image: _buildImage('Emblem_Challenger'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "STATS TRACKING",
          body:
              "Tracking You In Games and Providing You Information to Improve Your Gameplay",
          image: _buildImage('stats'),
          decoration: pageDecoration,
        ),
      ],
      onDone: () => Navigator.pushReplacementNamed(context, '/login'),
      onSkip: () => Navigator.pushReplacementNamed(
          context, '/login'), // You can override onSkip callback
      showSkipButton: true,
      curve: Curves.easeInQuad,
      skipFlex: 0,
      nextFlex: 0,
      skip: const Text('Skip'),
      next: const Icon(Icons.arrow_forward),
      done: const Text('Get Started',
          style: TextStyle(fontWeight: FontWeight.w600)),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Colors.white70,
        activeColor: Colors.black87,
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
    );
  }
}
