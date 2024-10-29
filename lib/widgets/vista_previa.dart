import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class VistaPrevia extends StatefulWidget {
  @override
  _VistaPreviaState createState() => _VistaPreviaState();
}

class _VistaPreviaState extends State<VistaPrevia> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 45, 177, 200),
        leading: const Icon(Icons.filter_alt),
        title: const Text("Catálogo"),
        actions: <Widget>[
          IconButton(
            tooltip: 'Buscar libro',
            icon: const Icon(Icons.search),
            onPressed: () {},
          )
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Center(
            child: Container(
              height: 900,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 30),
                  Row(
                    children: [
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              //Espacio para codigo
                              print("Acceder a la lectura");
                            },
                            child: SvgPicture.asset(
                              'images/image_vector.svg',
                              width: 150,
                              height: 200,
                            ),
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Título"),
                          Text("Género"),
                          Text("Dificultad"),
                          Text("Dificultad"),
                          Text("Palabras"),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 30),
                  //Fila para la sipnopsis
                  Row(
                    children: [
                      Text(
                        'Sipnopsis',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  SizedBox(height: 30),
                  //Seguna fila para la sipnopsis
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Lorem ipsum dolor sit amet consectetur adipiscing elit, quisque sociosqu suscipit primis pulvinar eleifend, enim libero feugiat habitant aliquam accumsan. Mi proin laoreet litora facilisi eros cras potenti semper, montes diam posuere augue nisi nascetur auctor, aptent aenean ullamcorper platea vivamus fames venenatis. Tristique lobortis in sodales vivamus inceptos eu sapien quam et, eget facilisi vehicula dapibus nisl sagittis ligula hendrerit, gravida augue habitant nulla sollicitudin justo condimentum aliquet. Laoreet augue congue volutpat donec sed dapibus egestas, molestie dui proin aenean blandit eu libero cubilia, sociosqu interdum cum senectus montes a. Lacus magna blandit eu sagittis eleifend scelerisque volutpat facilisi id sed nascetur, dignissim cursus tincidunt laoreet duis netus habitasse ultrices morbi fames porta, ad hac aliquam felis suspendisse ullamcorper aliquet justo pellentesque primis. Ad ligula mi egestas fringilla sociis ante curabitur torquent porttitor laoreet tincidunt quam, pretium purus blandit condimentum sodales sed metus accumsan ridiculus sollicitudin.',
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          //Espacio para codigo
                        },
                        child: Text("Leer"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
