import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1/controllers/football_controller.dart';
import 'package:latihan1/routes/routes.dart';

class FootballPage extends StatelessWidget {
  final FootballController footballController = Get.put(FootballController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Football Players")),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Obx(
          () => ListView.builder(
            itemCount: footballController.players.length,
            itemBuilder: (context, index) {
              final player = footballController.players[index];
              return ListTile(
                onTap: () {
                  Get.toNamed(
                    AppRoutes.footballeditplayers,
                    arguments: {"index": index, "player": player},
                  );
                },
                leading: CircleAvatar(
                  backgroundImage: AssetImage(player.image),
                ),
                title: Text(player.name),
                subtitle: Text("${player.position} - ${player.number}"),
              );
            },
          ),
        ),
      ),
    );
  }
}
