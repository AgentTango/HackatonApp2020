import 'package:flutter/material.dart';
import 'package:hack2020/pages/select_spaceship.dart';
import 'package:hack2020/widgets/animated_app_title.dart';
import 'package:hack2020/widgets/animated_back_button.dart';
import 'package:hack2020/widgets/animated_earth.dart';
import 'package:hack2020/widgets/animeted_planets_carousel.dart';
import 'package:hack2020/widgets/app_button.dart';
import 'package:rxdart/subjects.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  BehaviorSubject<bool> arePlanetsShownSubject =
      BehaviorSubject<bool>.seeded(false);

  @override
  void dispose() {
    arePlanetsShownSubject.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          MaterialButton(
            child: Text("GO TO SPACESHIPS"),
            onPressed: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) {
                return SelectSpaceship();
              },
            )),
          )
        ],
      ),
      backgroundColor: Colors.black,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        height: 54,
        child: AppButton(
          'BOOK A SEAT',
          onTap: () {
            arePlanetsShownSubject.add(true);
          },
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: AnimatedAppTitleWidget(
                  arePlanetsShownSubject: arePlanetsShownSubject),
            ),
            Align(
                alignment: Alignment.topLeft,
                child: AnimatedBackButtonWidget(
                  arePlanetsShownSubject: arePlanetsShownSubject,
                )),
            AnimatedPlanetsCarouselWidget(
                arePlanetsShownSubject: arePlanetsShownSubject),
            AnimatedEarthWidget(arePlanetsShownSubject: arePlanetsShownSubject),
          ],
        ),
      ),
    );
  }
}
