import 'package:flutter/material.dart';

class ListaCompras extends StatefulWidget {
  const ListaCompras({Key? key}) : super(key: key);

  @override
  _ListaComprasState createState() => _ListaComprasState();
}

class _ListaComprasState extends State<ListaCompras> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lista de Alimentos"),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
            return GetCard();
          }),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }

  Widget GetCard() {
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 10, top: 5),
      height: 150,
      child: Card(
        color: const Color.fromRGBO(25, 48, 124, 0.01),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Row(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(left: 10, top: 10),
                  child: const Text("Nome:",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      )),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 10, top: 10),
                  child: const Text("Inglês:"),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 10, top: 10),
                  height: 30,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Container(
                    margin: const EdgeInsets.only(left: 5),
                    child: Row(
                      children: const <Widget>[
                        Text(
                          "Grupo:",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Text(
                    "0",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
                  ),
                  Text("Quantidade"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
