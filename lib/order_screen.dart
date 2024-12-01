import 'package:fake_coffe_app/cusom_app_bar.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class OrderScreen extends StatefulWidget {
  @override
  _OrderScreenState createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  List<dynamic> coffeeData = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchCoffeeData();
  }

  Future<void> fetchCoffeeData() async {
    final url = 'https://fake-coffee-api.vercel.app/api';
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        setState(() {
          coffeeData = json.decode(response.body);
          isLoading = false;
        });
      } else {
        throw Exception('Failed to load coffee data');
      }
    } catch (e) {
      setState(() {
        isLoading = false;
      });
      print('Error fetching data: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CusomAppBar(
          "Order", "You can order your desired size of coffee", context),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: coffeeData.length,
              itemBuilder: (context, index) {
                final coffee = coffeeData[index];
                return CoffeeCard(coffee: coffee);
              },
            ),
    );
  }
}

class CoffeeCard extends StatelessWidget {
  final dynamic coffee;

  CoffeeCard({required this.coffee});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(230, 229, 229, 1),
      margin: const EdgeInsets.only(top: 5, bottom: 5),
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                coffee['name'],
                style: const TextStyle(
                    fontFamily: 'Food',
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(26, 187, 156, 1)),
              ),
              Text(coffee['description'], style: TextStyle(fontSize: 13),),
              const SizedBox(height: 20,),
              Text(
                "Price:\$${coffee['price'].toString()}",
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
              )
            ],
          )),
          Container(
            width: 50,
            height: 160,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.horizontal(left: Radius.circular(10)),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(coffee['image_url']),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
