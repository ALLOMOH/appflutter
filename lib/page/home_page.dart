import 'package:flutter/material.dart';
import 'package:flutter_youtube/class/item_class.dart';
import 'package:flutter_youtube/widget/card_widget.dart';
import 'package:lordicon/lordicon.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = IconController.assets('asset/lock.json');

    controller.addStatusListener((status) {
      if (status == ControllerStatus.ready) {
        controller.playFromBeginning();
      }
    });

    return Scaffold(
        appBar: AppBar(
          title: const Text("Learn Code flutter"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              CardWidget(
                box: ItemClass(
                    title: 'Sortie',
                    imagePath: 'images/pinch.png',
                    description: 'this a launch'),
              ),
              Row(
                children: [
                  Expanded(
                      child: CardWidget(
                    box: ItemClass(
                        title: "rocket",
                        imagePath: "images/launch.png",
                        description: "this a rocket"),
                  )),
                  Expanded(
                      child: CardWidget(
                    box: ItemClass(
                        title: "Rocket",
                        imagePath: "images/launch.png",
                        description: "this a rocket"),
                  ))
                ],
              ),
              CardWidget(
                box: ItemClass(
                    title: "travel",
                    imagePath: "images/wired_pinch.png",
                    description: "this is travel"),
              )
            ],
          ),
        ));
  }
}
