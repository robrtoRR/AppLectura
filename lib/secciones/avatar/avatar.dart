import 'package:app_lectura/widgets/pallete.dart';
import 'package:flutter/material.dart';
import '../../pallete.dart';

class Avatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kAppBar,
        leading: const Icon(
          Icons.store,
        ),
        title: const Text("Personaliza tu avatar"),
      ),
      backgroundColor: kBackgroungd,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            //Primera fila
            Expanded(
              flex: 2,
              child: Center(
                child: Image.asset(
                  'images/profile_icon.svg',
                  width: 150,
                  height: 150,
                ),
              ),
            ),
            //Segunda fila
            Expanded(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("Fondo"),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("Bufandas"),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("Gorros"),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("Lentes"),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("Máscaras"),
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
            //Tercera fila
            Expanded(
              flex: 1,
              child: Center(
                child: Center(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Confirmar"),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
