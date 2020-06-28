import 'package:flutter/material.dart';
import 'package:hack2020/pages/thank_you.dart';
import 'package:hack2020/widgets/app_tile.dart';

import '../widgets/app_back_button.dart';
import '../widgets/app_button.dart';

class Checkout extends StatefulWidget {
  Checkout({Key key}) : super(key: key);

  @override
  _CheckOutState createState() => _CheckOutState();
}

class _CheckOutState extends State<Checkout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              children: <Widget>[
                _buildAppBar(),
                _buildHeader(),
                AppTile(
                  child: Container(
                    margin:
                        EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
                    child: Row(
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text(
                              'FROM',
                              style: TextStyle(
                                  fontSize: 14.0,
                                  fontFamily: 'Futura',
                                  fontWeight: FontWeight.w700,
                                  color: const Color(0XFFEAEAEA)),
                            ),
                            Text(
                              'EARTH',
                              style: TextStyle(
                                  fontSize: 15.0,
                                  fontFamily: 'Futura',
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0XFFA7B3BF)),
                            )
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 30.0),
                          child: Image.asset('assets/curved_arrow.png'),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text(
                              'DESTINATION',
                              style: TextStyle(
                                  fontSize: 14.0,
                                  fontFamily: 'Futura',
                                  fontWeight: FontWeight.w700,
                                  color: const Color(0XFFEAEAEA)),
                            ),
                            Text(
                              'Neptune',
                              style: TextStyle(
                                  fontSize: 15.0,
                                  fontFamily: 'Futura',
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0XFFA7B3BF)),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                AppTile(
                    child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(
                            'SPACESHIP',
                            style: TextStyle(
                                fontSize: 14.0,
                                fontFamily: 'Futura',
                                fontWeight: FontWeight.w700,
                                color: const Color(0XFFEAEAEA)),
                          ),
                          Text(
                            'Spaceship name',
                            style: TextStyle(
                                fontSize: 15.0,
                                fontFamily: 'Futura',
                                fontWeight: FontWeight.w500,
                                color: const Color(0XFFA7B3BF)),
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 16.0),
                        child: Transform.scale(
                          scale: 2.6,
                          child: Image.asset('assets/spaceships/1.png'),
                        ),
                      ),
                    ],
                  ),
                )),
                AppTile(
                  child: Container(
                    margin:
                        EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text(
                              'SEATS',
                              style: TextStyle(
                                  fontSize: 14.0,
                                  fontFamily: 'Futura',
                                  fontWeight: FontWeight.w700,
                                  color: const Color(0XFFEAEAEA)),
                            ),
                            Text(
                              '1, 2, 3, 4, 5',
                              style: TextStyle(
                                  fontSize: 15.0,
                                  fontFamily: 'Futura',
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0XFFA7B3BF)),
                            )
                          ],
                        ),
                        Container(
                          width: 20.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text(
                              'PRICE',
                              style: TextStyle(
                                  fontSize: 14.0,
                                  fontFamily: 'Futura',
                                  fontWeight: FontWeight.w700,
                                  color: const Color(0XFFEAEAEA)),
                            ),
                            Text(
                              '1000 Moon Coins',
                              style: TextStyle(
                                  fontSize: 15.0,
                                  fontFamily: 'Futura',
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0XFFFF6A00)),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            AppButton(
              'BOOK A SEAT',
              onTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => ThankYou())),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildAppBar() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          AppBackButton(
            onPressed: () => Navigator.of(context).pop(),
          ),
          Image.asset('assets/logo.png'),
          const SizedBox(width: 66.0)
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 40.0),
      child: Text(
        "CHECKOUT",
        style: const TextStyle(
          fontFamily: 'Futura',
          fontWeight: FontWeight.w700,
          fontSize: 14.0,
        ),
      ),
    );
  }
}
