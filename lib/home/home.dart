import 'package:flutter/material.dart';
import 'package:flutterparcialn2_venturadeleon2561152016/json/tipos_comida.dart';

class parcial2 extends StatelessWidget {
  const parcial2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Parcial N2 - asdas",
      home: Parcialn2(),
    );
  }
}

class Parcialn2 extends StatefulWidget {
  Parcialn2({Key? key}) : super(key: key);

  @override
  State<Parcialn2> createState() => _Parcialn2State();
}

class _Parcialn2State extends State<Parcialn2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: principal(),
    );
  }

  Widget principal() {
    return Center(
      child: ListView(
        children: <Widget>[image(), search(), ventas(), burger()],
      ),
    );
  }
}

Widget image() {
  return Center(
    child: Container(
      width: 300,
      height: 400,
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/image/zarco.png"))),
    ),
  );
}

Widget search() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 30, right: 30),
        child: Center(
          child: TextField(
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0)),
                hintText: "Busca tu combo",
                filled: true,
                prefixIcon: Icon(Icons.search)),
          ),
        ),
      ),
    ],
  );
}

Widget ventas() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 10, top: 20),
        child: Container(
          child: Text("Ventas"),
        ),
      ),
      SizedBox(height: 30),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.only(left: 30, top: 5, right: 30),
          child: Row(
            children: List.generate(5, (index) {
              return Padding(
                padding: const EdgeInsets.only(right: 30),
                child: GestureDetector(
                  onTap: () {},
                  child: Column(
                    children: [
                      Container(
                        width: 180,
                        height: 180,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(types[index]),
                            ),
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(30)),
                      )
                    ],
                  ),
                ),
              );
            }),
          ),
        ),
      )
    ],
  );
}

Widget burger() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 10, top: 20),
        child: Container(
          child: Text("Burgers"),
        ),
      ),
      SizedBox(height: 30),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Container(
          child: Padding(
            padding: const EdgeInsets.only(left: 30, top: 2, right: 30),
            child: Row(
              children: List.generate(3, (index) {
                return Container(
                  padding: const EdgeInsets.only(right: 10, top: 30, left: 10),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.redAccent,
                            borderRadius: BorderRadius.circular(20)),
                        padding: const EdgeInsets.only(
                            right: 10, top: 30, left: 10, bottom: 10),
                        child: Column(
                          children: [
                            Container(
                                width: 180,
                                height: 180,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(comida[index]['img']),
                                    ),
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(30))),
                            SizedBox(
                              height: 2,
                            ),
                            Container(
                              width: 180,
                              height: 150,
                              decoration: BoxDecoration(
                                  color: Colors.orangeAccent,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 5, left: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      comida[index]['titulo'],
                                      style: TextStyle(fontSize: 17),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Container(
                                        width: 150,
                                        height: 40,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/image/start.png"),
                                                fit: BoxFit.cover),
                                            color: Colors.grey,
                                            borderRadius:
                                                BorderRadius.circular(30))),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      comida[index]['precio'],
                                      style: TextStyle(fontSize: 16),
                                    ),
                                    SizedBox(height: 5),
                                    Text(comida[index]['descripcion'],
                                        style: TextStyle(fontSize: 15))
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              }),
            ),
          ),
        ),
      )
    ],
  );
}
