import 'package:flutter/material.dart';

class Memorama extends StatefulWidget {
  @override
  _MemoramaState createState() => _MemoramaState();
}

class _MemoramaState extends State<Memorama> {
  List<String> images = [
    'images/memorama/imagen1.jpg',
    'images/memorama/imagen2.jpg',
    'images/memorama/imagen3.jpg',
    'images/memorama/imagen4.jpg',
    'images/memorama/imagen1.jpg',
    'images/memorama/imagen2.jpg',
    'images/memorama/imagen3.jpg',
    'images/memorama/imagen4.jpg',
    'images/memorama/imagen5.jpg',
    'images/memorama/imagen6.jpg',
    'images/memorama/imagen5.jpg',
    'images/memorama/imagen6.jpg',
  ];
  List<bool> isFlipped = List.filled(12, false);
  List<bool> isMatched = List.filled(12, false);
  int attempts = 8;
  int selectedIndex = -1;

  void flipCard(int index) {
    if (isMatched[index] || isFlipped[index]) return;

    setState(() {
      isFlipped[index] = !isFlipped[index];
      if (selectedIndex == -1) {
        selectedIndex = index;
      } else {
        if (images[selectedIndex] == images[index]) {
          isMatched[selectedIndex] = true;
          isMatched[index] = true;
        } else {
          Future.delayed(Duration(seconds: 1), () {
            setState(() {
              isFlipped[selectedIndex] = false;
              isFlipped[index] = false;
            });
          });
          attempts--;
        }
        selectedIndex = -1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 45, 177, 200),
        title: const Text("Actividad Memorama"),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              'Memorama: Encuentra todas las parejas en 8 intentos.',
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                ),
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      if (attempts > 0 && !isMatched[index]) {
                        flipCard(index);
                      }
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: isFlipped[index] || isMatched[index]
                          ? Image.asset(
                              images[index],
                              fit: BoxFit.cover,
                            )
                          : Container(),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Intentos restantes: $attempts',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
