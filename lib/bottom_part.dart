import 'package:fake_coffe_app/steps_widget.dart';
import 'package:flutter/material.dart';

class BottomPart extends StatelessWidget {
  const BottomPart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color.fromRGBO(26, 187, 156, 1),
        child: Column(
          children: [
            IntrinsicWidth(
              child: Column(children: [
                Center(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: const Text(
                          'HOW TO JOIN!',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 18.0,
                              fontWeight: FontWeight.w900,
                              decorationThickness: 10,
                              decorationColor: Color.fromRGBO(241, 242, 233, 1),
                              color: Color.fromRGBO(241, 242, 233, 1),
                              height: 1.5),
                        ),
                      ),
                      Container(
                        height: 6,
                        color: const Color.fromRGBO(241, 242, 233, 1),
                      )
                    ],
                  ),
                )
              ]),
            ),
            Image.asset('assets/images/Screenshot 2024-11-25 150331.png'),
            StepsWidget(),
            Container(
              width: double.maxFinite,
              color: Color.fromRGBO(241, 242, 233, 1),
              padding: EdgeInsets.all(10),
              child: const Text(
                "©2020 This is a Company, All Rights Reserved",
                style: TextStyle(
                    color: Color.fromRGBO(26, 187, 156, 1),
                    fontSize: 12,
                    fontWeight: FontWeight.w600),
              ),
            )
          ],
        ));
  }
}
