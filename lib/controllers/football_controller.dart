import 'package:get/get.dart';

class Player {
  String image;
  String name;
  String position;
  int number;

  Player({
    required this.image,
    required this.name,
    required this.position,
    required this.number,
  });
}

class FootballController extends GetxController {
  var players = <Player>[
    Player(image: "assets/placeholder.png", name: "Pak Aji", position: "CF", number: 07),
    Player(image: "assets/placeholder.png", name: "Neymar", position: "SS", number: 10),
    Player(image: "assets/placeholder.png", name: "Messi", position: "RWF", number: 30),
    Player(image: "assets/placeholder.png", name: "Ronaldo", position: "LWF", number: 7),
  ].obs;

  void updatePlayer(int index, Player updatedPlayer) {
    players[index] = updatedPlayer;
  }
}
