import 'package:flutter/material.dart';
import 'package:zomato/main.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        backgroundColor: Colors.white,
        foregroundColor: Colors.white,
        shadowColor: Colors.black54,
        title: Image.asset(
          "assets/images/zomato-logo.avif",
          width: 130 * 393 / width,
          fit: BoxFit.fitWidth,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              "assets/images/profile.png",
              width: 40 * 393 / width,
              height: 40 * 393 / width,
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: 72 * width / 393,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 2),
                  color: Colors.grey.shade200,
                  blurRadius: 4,
                ),
              ],
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Image.asset(
                        "assets/images/placeholder.png",
                        width: 30 * 393 / width,
                      ),
                      Text(
                        "Durg Bhilai",
                        style: Theme.of(context).textTheme.labelSmall,
                        textAlign: TextAlign.end,
                      ),
                    ],
                  ),
                  Container(
                    width: 36 * width / 393,
                    height: 36 * width / 393,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18 * width / 393),
                      color: Colors.grey.shade100,
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.search_outlined),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
