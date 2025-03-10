import 'package:flutter/material.dart';
import 'package:flutter_youtube/class/item_class.dart';
import 'package:flutter_youtube/core/constants.dart';

class DescriptionPage extends StatefulWidget {
  const DescriptionPage({super.key, required this.box});
  final ItemClass box;

  @override
  State<DescriptionPage> createState() => _DescriptionPageState();
}

class _DescriptionPageState extends State<DescriptionPage> {
  double fontSizeCustom = 20.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.box.title.substring(0, 1).toUpperCase() +
              widget.box.title.substring(1).toLowerCase()),
          actions: [
            IconButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text("Snackbar"),
                    behavior: SnackBarBehavior.floating,
                  ));
                },
                icon: const Icon(Icons.info))
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(kDouble10),
            child: Column(
              children: [
                Image.asset(widget.box.imagePath),
                Wrap(
                  spacing: kDouble10,
                  children: [
                    TextButton(
                        onPressed: () {
                          setState(() {
                            fontSizeCustom = 25;
                          });
                        },
                        child: const Text('Small Title')),
                    OutlinedButton(
                        onPressed: () {
                          setState(() {
                            fontSizeCustom = 35;
                          });
                        },
                        child: const Text('Medium Title')),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            fontSizeCustom = 50.0;
                          });
                        },
                        child: const Text('Large Title')),
                    FilledButton(
                        onPressed: () {
                          setState(() {
                            fontSizeCustom = 200.0;
                          });
                        },
                        child: const Text('Huge Title')),
                  ],
                ),
                FittedBox(
                  child: Text(
                    widget.box.title,
                    style: TextStyle(
                      fontSize: fontSizeCustom,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Text(
                  baconDescription,
                  style: TextStyle(
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(
                  height: kDouble10,
                ),
                const Text(
                  baconDescription,
                  style: TextStyle(
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          ),
        ));
  }
}
