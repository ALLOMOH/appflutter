import 'package:flutter/material.dart';
import 'package:flutter_youtube/class/item_class.dart';
import 'package:flutter_youtube/core/constants.dart';
import 'package:flutter_youtube/page/description_page.dart';

// ignore: must_be_immutable
class CardWidget extends StatelessWidget {
  final ItemClass box;
  CardWidget({super.key, required this.box});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return DescriptionPage(
            box: box,
          );
        }));
      },
      child: Card(
        child: Container(
          padding: const EdgeInsets.all(8.0),
          width: double.infinity,
          child: Column(children: [
            Image.asset(box.imagePath),
            Text(
              box.title.substring(0, 1).toUpperCase() + box.title.substring(1),
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Text(box.description),
            const SizedBox(
              height: kDouble5,
            ),
          ]),
        ),
      ),
    );
  }
}
