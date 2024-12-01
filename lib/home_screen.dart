import 'dart:io';

import 'package:fake_coffe_app/bottom_part.dart';
import 'package:fake_coffe_app/buttons_card.dart';
import 'package:fake_coffe_app/intro_card.dart';
import 'package:fake_coffe_app/slurp_card.dart';
import 'package:fake_coffe_app/steps_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: const Column(
              children: [IntroCard(), ButtonsCard(), BottomPart()],
            ),
          ),
        ),
      ),
    );
  }
}
