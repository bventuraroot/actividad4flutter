import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:actividad4flutter/main.dart';

class Pantalla3Trans extends CupertinoPageRoute {
  Pantalla3Trans()
      : super(builder: (BuildContext context) => new Pantalla3Home());
  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation) {
    return new FadeTransition(opacity: animation, child: new Pantalla3Home());
  }
}

class Pantalla3Home extends StatelessWidget {
  const Pantalla3Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Pantalla3(),
    );
  }
}

class Pantalla3 extends StatefulWidget {
  const Pantalla3({Key? key}) : super(key: key);

  @override
  State<Pantalla3> createState() => _Pantalla3State();
}

class _Pantalla3State extends State<Pantalla3> {
  static String titulo = "Nueva contraseña";

  String lblContraseaActual = "Contraseña actual";
  String lblContraseaNueva = "Nueva contraseña";
  String lblContraseaConfirmar = "Confirmar contraseña";

  TextEditingController actualPass = TextEditingController();
  TextEditingController newPass = TextEditingController();
  TextEditingController newPassConfirmation = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          // decoration: borderBlack(),
          child: Padding(
              padding: const EdgeInsets.all(10),
              child: ListView(
                children: <Widget>[
                  Container(
                      margin: const EdgeInsets.all(0),
                      padding: const EdgeInsets.all(0),
                      alignment: Alignment.centerRight,
                      width: MediaQuery.of(context).size.width / 5,
                      //decoration: borderBlack(),
                      child: Container(
                          height: 150,
                          child: FlareActor(
                            "assets/img/space_demo.flr",
                            shouldClip: false,
                            alignment: Alignment.bottomCenter,
                            fit: BoxFit.contain,
                            animation: "pull",
                          ))),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.fromLTRB(15, 30, 15, 10),
                    // decoration: borderBlack(),
                    child: Text(
                      titulo,
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                  //CONTAINTER LABEL
                  Container(
                    padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
                    child: Text(lblContraseaActual),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
                    child: TextField(
                      controller: actualPass,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: lblContraseaActual,
                      ),
                    ),
                  ),
                  //CONTAINTER LABEL
                  Container(
                    padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
                    child: Text(lblContraseaNueva),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
                    child: TextField(
                      obscureText: true,
                      controller: newPass,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: lblContraseaNueva,
                      ),
                    ),
                  ),
                  //CONTAINTER LABEL
                  Container(
                    padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
                    child: Text(lblContraseaConfirmar),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
                    child: TextField(
                      obscureText: true,
                      controller: newPass,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: lblContraseaConfirmar,
                      ),
                    ),
                  ),
                  Container(
                      height: 50,
                      margin: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                      padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                      child: ElevatedButton(
                        child: const Text('ACTUALIZAR CONTRASEÑA'),
                        onPressed: () {
                          //
                        },
                      )),
                  Container(
                      height: 50,
                      margin: const EdgeInsets.fromLTRB(5, 20, 10, 0),
                      padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                      child: ElevatedButton(
                        child: const Text('REGRESAR'),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Inicio()));
                        },
                      )),
                  SizedBox(
                    height: 30,
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
