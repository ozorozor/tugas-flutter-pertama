import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1/controllers/football_controller.dart';

class FootballEditPage extends StatelessWidget {
  final FootballController footballController = Get.find();

  final TextEditingController nameController = TextEditingController();
  final TextEditingController positionController = TextEditingController();
  final TextEditingController numberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final args = Get.arguments;
    final int index = args["index"];
    final Player player = args["player"];

    // isi textfield dengan data lama
    nameController.text = player.name;
    positionController.text = player.position;
    numberController.text = player.number.toString();

    return Scaffold(
      appBar: AppBar(title: Text("Edit Player")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(labelText: "Name"),
            ),
            TextField(
              controller: positionController,
              decoration: InputDecoration(labelText: "Position"),
            ),
            TextField(
              controller: numberController,
              decoration: InputDecoration(labelText: "Number"),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                footballController.updatePlayer(
                  index,
                  Player(
                    image: player.image, 
                    name: nameController.text,
                    position: positionController.text,
                    number: int.tryParse(numberController.text) ?? 0,
                  ),
                );
                Get.back();
              },
              child: Text("Save"),
            )
          ],
        ),
      ),
    );
  }
}
