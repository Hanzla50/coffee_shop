import 'package:fake_coffe_app/cusom_app_bar.dart';
import 'package:flutter/material.dart';

class WhySlurpScreen extends StatelessWidget {
  late String title, description, imgUrl, text;

  WhySlurpScreen({
    super.key,
    required this.title,
    required this.description,
    required this.imgUrl,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CusomAppBar(this.title, this.description, context),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 25),
              Image.network(this.imgUrl,height: 200, width: 200, fit: BoxFit.cover),
              const SizedBox(height: 40,),
              Text(
                this.text,
                style: const TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
