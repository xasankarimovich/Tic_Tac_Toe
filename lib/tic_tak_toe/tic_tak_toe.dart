
import 'dart:math';

import 'package:flutter/material.dart';

class GamePage extends StatefulWidget {
  @override
  State<GamePage> createState() {
    return _GamePageState();
  }
}

class _GamePageState extends State<GamePage> {
  List<String> boxes = ["", "", "", "", "", "", "", "", ""];
  int counter = 0;
  String winner = "";

  void onPressed(int index) {
    if (boxes[index].isEmpty && winner.isEmpty) {
      boxes[index] = "❌";
      counter++;
      winner = checkWin();

      if (counter < 9 && winner != "X") {
        int randomNumber = Random().nextInt(9);
        while (boxes[randomNumber].isNotEmpty) {
          randomNumber = Random().nextInt(9);
        }
        boxes[randomNumber] = "⭕️";
        counter++;
        winner = checkWin();
      }
      setState(() {});

      if (winner.isNotEmpty) {
        showDialog(
          context: context,
          barrierDismissible: false,
          builder: (ctx) {
            return AlertDialog(
              title: Text("$winner Yutdi!"),
              actions: [
                OutlinedButton.icon(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  label: const Text("Okay"),
                  icon: const Icon(Icons.thumb_up),
                ),
              ],
            );
          },
        );
      }
    }
  }

  String checkWin() {
    if (boxes[0] == "❌" && boxes[1] == "❌" && boxes[2] == "❌") {
      return "❌";
    } else if (boxes[3] == "❌" && boxes[4] == "❌" && boxes[5] == "❌") {
      return "❌";
    } else if (boxes[6] == "❌" && boxes[7] == "❌" && boxes[8] == "❌") {
      return "❌";
    } else if (boxes[0] == "❌" && boxes[3] == "❌" && boxes[6] == "❌") {
      return "❌";
    } else if (boxes[1] == "❌" && boxes[4] == "❌" && boxes[7] == "❌") {
      return "❌";
    } else if (boxes[2] == "❌" && boxes[5] == "❌" && boxes[8] == "❌") {
      return "❌";
    } else if (boxes[0] == "❌" && boxes[4] == "❌" && boxes[8] == "❌") {
      return "❌";
    } else if (boxes[2] == "❌" && boxes[4] == "❌" && boxes[6] == "❌") {
      return "❌";
    }

    if (boxes[0] == "⭕️" && boxes[1] == "⭕️" && boxes[2] == "⭕️") {
      return "❌";
    } else if (boxes[3] == "⭕️" && boxes[4] == "⭕️" && boxes[5] == "O⭕️") {
      return "⭕️";
    } else if (boxes[6] == "⭕️" && boxes[7] == "⭕️" && boxes[8] == "⭕️") {
      return "️⭕️";
    } else if (boxes[0] == "⭕️" && boxes[3] == "⭕️" && boxes[6] == "⭕️") {
      return "⭕️";
    } else if (boxes[1] == "⭕️" && boxes[4] == "⭕️" && boxes[7] == "⭕️") {
      return "⭕️";
    } else if (boxes[2] == "⭕️" && boxes[5] == "⭕️" && boxes[8] == "⭕️") {
      return "⭕️";
    } else if (boxes[0] == "⭕️" && boxes[4] == "⭕️" && boxes[8] == "⭕️") {
      return "⭕️";
    } else if (boxes[2] == "⭕️" && boxes[4] == "⭕️" && boxes[6] == "⭕️") {
      return "⭕️";
    }

    return "";
  }

  void restart() {
    boxes = ["", "", "", "", "", "", "", "", ""];
    counter = 0;
    winner = "";
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Text("Tic Tac Toe"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    onPressed(0);
                  },
                  child: Ink(
                    color: Colors.cyanAccent,
                    child: Container(
                      width: 100,
                      height: 100,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blueGrey,width: 5,strokeAlign: BorderSide.strokeAlignInside),
                      ),
                      child: Text(boxes[0]),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    onPressed(1);
                  },
                  child: Ink(
                    color: Colors.cyanAccent,
                    child: Container(
                      width: 100,
                      height: 100,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blueGrey,width: 5,strokeAlign: BorderSide.strokeAlignInside),
                      ),
                      child: Text(boxes[1]),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    onPressed(2);
                  },
                  child: Ink(
                    color: Colors.cyanAccent,
                    child: Container(
                      width: 100,
                      height: 100,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blueGrey,width: 5,strokeAlign: BorderSide.strokeAlignInside),
                      ),
                      child: Text(boxes[2]),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(

                  onTap: () {
                    onPressed(3);
                  },
                  child: Ink(
                    color: Colors.cyanAccent,
                    child: Container(
                      width: 100,
                      height: 100,

                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blueGrey,width: 5,strokeAlign: BorderSide.strokeAlignInside),
                      ),
                      child: Text(boxes[3]),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    onPressed(4);
                  },
                  child: Ink(
                    color: Colors.cyanAccent,
                    child: Container(
                      width: 100,
                      height: 100,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blueGrey,width: 5,strokeAlign: BorderSide.strokeAlignInside),
                      ),
                      child: Text(boxes[4]),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    onPressed(5);
                  },
                  child: Ink(
                    color: Colors.cyanAccent,
                    child: Container(
                      width: 100,
                      height: 100,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blueGrey,width: 5,strokeAlign: BorderSide.strokeAlignInside),
                      ),
                      child: Text(boxes[5]),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    onPressed(6);
                  },
                  child: Ink(
                    color: Colors.cyanAccent,
                    child: Container(
                      width: 100,
                      height: 100,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blueGrey,width: 5,strokeAlign: BorderSide.strokeAlignInside),
                      ),
                      child: Text(boxes[6]),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    onPressed(7);
                  },
                  child: Ink(
                    color: Colors.cyanAccent,
                    child: Container(
                      width: 100,
                      height: 100,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blueGrey,width: 5,strokeAlign: BorderSide.strokeAlignInside),
                      ),
                      child: Text(boxes[7]),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    onPressed(8);
                  },
                  child: Ink(
                    color: Colors.cyanAccent,
                    child: Container(
                      width: 100,
                      height: 100,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blueGrey,width: 5,strokeAlign: BorderSide.strokeAlignInside),
                      ),
                      child: Text(boxes[8]),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  restart();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30
                  ),
                ),
                child: const Text("NEW GAME"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}