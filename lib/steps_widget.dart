import 'package:flutter/material.dart';

class StepsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(26, 187, 156, 1),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                StepCircle(number: '1'),
                DashedLine(),
                StepCircle(number: '2'),
                DashedLine(),
                StepCircle(number: '3'),
                DashedLine(),
                StepCircle(number: '4'),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                StepWidget(
                  icon: Icons.fastfood,
                  title: "STEP 1",
                  subtitle: "Download the App and create your Profile.",
                ),
                StepWidget(
                  icon: Icons.verified,
                  title: "STEP 2",
                  subtitle: "Choose your Membership plan.",
                ),
                StepWidget(
                  icon: Icons.local_cafe,
                  title: "STEP 3",
                  subtitle: "Select your coffee in the App.",
                ),
                StepWidget(
                  icon: Icons.qr_code,
                  title: "STEP 4",
                  subtitle:
                      "Show your QR-code at checkout & get your Hot Coffee!",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class DashedLine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 1,
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return Flex(
              direction: Axis.horizontal,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                (constraints.constrainWidth() / 10).floor(),
                (index) => const SizedBox(
                  width: 5,
                  height: 1,
                  child: DecoratedBox(
                    decoration: BoxDecoration(color: Colors.white),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class StepCircle extends StatelessWidget {
  final String number;

  StepCircle({required this.number});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Text(
          number,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.teal,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}

// Step Widget
class StepWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  StepWidget({required this.icon, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(
            icon,
            color: Colors.teal,
            size: 20,
          ),
        ),
        SizedBox(height: 10),
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 11,
          ),
        ),
        SizedBox(height: 5),
        SizedBox(
          width: 80,
          child: Text(
            subtitle,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 12,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
