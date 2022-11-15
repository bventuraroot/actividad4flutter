import 'package:actividad4flutter/pantalla3.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:icon_decoration/icon_decoration.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:actividad4flutter/teddy_controller.dart';
import 'package:actividad4flutter/tracking_text_input.dart';
import 'package:actividad4flutter/signin_button.dart';
import 'package:actividad4flutter/pantalla2.dart';

class Pantalla1 extends StatefulWidget {
  const Pantalla1({Key? key}) : super(key: key);

  @override
  State<Pantalla1> createState() => _Pantalla1State();
}

class _Pantalla1State extends State<Pantalla1> {
  late TeddyController _teddyController;
  @override
  initState() {
    _teddyController = TeddyController();
    super.initState();
  }

  String tituloLogin = "Flare Animations";
  String nombreApp = "Recuperacion 40%";
  String lbllogin = "Ingresar";
  String lblresetPass = "¿Olvidaste tu Contraseña?";
  String resetPass = "Reestablecer Contraseña";
  String lblregister = "¿Ya tienes cuenta?";
  String register = "Registrarse";
  String lblEmail = "Email";
  String lblPassword = "Password";
  String lblCopy = "All rights reserved ®";

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
              height: 35,
              margin: const EdgeInsets.fromLTRB(15, 2, 15, 10),
              padding: const EdgeInsets.all(0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      margin: const EdgeInsets.all(0),
                      padding: const EdgeInsets.all(0),
                      width: MediaQuery.of(context).size.width / 2.7,
                      //decoration: borderBlack(),
                      child: Text(tituloLogin, style: TextStyle(fontSize: 22)))
                ],
              ),
            ),
            Container(
                margin: const EdgeInsets.all(0),
                padding: const EdgeInsets.all(0),
                alignment: Alignment.centerRight,
                width: MediaQuery.of(context).size.width / 5,
                //decoration: borderBlack(),
                child: Container(
                    height: 150,
                    child: FlareActor(
                      "assets/img/Teddy.flr",
                      shouldClip: false,
                      alignment: Alignment.bottomCenter,
                      fit: BoxFit.contain,
                      controller: _teddyController,
                    ))),
            Container(
              height: 30,
              margin: const EdgeInsets.fromLTRB(15, 2, 15, 10),
              padding: const EdgeInsets.all(0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      margin: const EdgeInsets.all(0),
                      padding: const EdgeInsets.all(0),
                      width: MediaQuery.of(context).size.width / 3.4,
                      //decoration: borderBlack(),
                      child: Text(nombreApp, style: TextStyle(fontSize: 14))),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
              child: TrackingTextInput(
                label: lblEmail,
                hint: "Email",
                onCaretMoved: (Offset? caret) {
                  _teddyController.lookAt(caret);
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
              child: TrackingTextInput(
                label: lblPassword,
                hint: "Password",
                isObscured: true,
                onCaretMoved: (Offset? caret) {
                  _teddyController.coverEyes(caret != null);
                  _teddyController.lookAt(null);
                },
                onTextChanged: (String value) {
                  _teddyController.setPassword(value);
                },
              ),
            ),
            SigninButton(
              child: Text("Ingresar",
                  style: TextStyle(
                      fontFamily: "RobotoMedium",
                      fontSize: 16,
                      color: Colors.white)),
              onPressed: () {
                //_teddyController.coverEyes(false);
                _teddyController.submitPassword();
                Navigator.of(context).push(new Pantalla3Trans());
              },
            ),
            Container(
              height: 20,
              margin: const EdgeInsets.fromLTRB(15, 2, 15, 10),
              padding: const EdgeInsets.all(0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      margin: const EdgeInsets.all(0),
                      padding: const EdgeInsets.all(0),
                      width: MediaQuery.of(context).size.width / 2.5,
                      //decoration: borderBlack(),
                      child: Text(lblresetPass, style: TextStyle(fontSize: 14)))
                ],
              ),
            ),
            Container(
              height: 20,
              margin: const EdgeInsets.fromLTRB(15, 2, 15, 10),
              padding: const EdgeInsets.all(0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      margin: const EdgeInsets.all(0),
                      padding: const EdgeInsets.all(0),
                      width: MediaQuery.of(context).size.width / 2.6,
                      //decoration: borderBlack(),
                      child: new InkWell(
                          child: new Text(
                            resetPass,
                            style: TextStyle(
                                color: Colors.red,
                                decoration: TextDecoration.underline),
                          ),
                          onTap: () => {}))
                ],
              ),
            ),
            Container(
              height: 20,
              margin: const EdgeInsets.fromLTRB(15, 60, 15, 10),
              padding: const EdgeInsets.all(0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      margin: const EdgeInsets.all(0),
                      padding: const EdgeInsets.all(0),
                      width: MediaQuery.of(context).size.width / 3.3,
                      //decoration: borderBlack(),
                      child: Text(lblregister, style: TextStyle(fontSize: 14)))
                ],
              ),
            ),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 100, vertical: 1),
                child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.of(context).push(new Pantalla2Trans());
                    },
                    icon: Icon(
                      Icons.login_sharp,
                      size: 24.0,
                    ),
                    label: Text(register))),
            Container(
              height: 20,
              margin: const EdgeInsets.fromLTRB(15, 45, 10, 10),
              //padding: const EdgeInsets.all(0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      margin: const EdgeInsets.all(0),
                      padding: const EdgeInsets.all(0),
                      width: MediaQuery.of(context).size.width / 2.5,
                      //decoration: borderBlack(),
                      child: Container(
                        child: Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.all(0),
                              padding: const EdgeInsets.all(0),
                              width: MediaQuery.of(context).size.width / 8.5,
                              child:
                                  Text(lblCopy, style: TextStyle(fontSize: 9)),
                            ),
                            Container(
                              child: DecoratedIcon(
                                icon: Icon(FontAwesomeIcons.facebook,
                                    color: Colors.blueAccent),
                                decoration: IconDecoration(
                                  shadows: [
                                    Shadow(blurRadius: 5, offset: Offset(0, 0))
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              child: DecoratedIcon(
                                icon: Icon(FontAwesomeIcons.whatsapp,
                                    color: Color.fromARGB(255, 7, 243, 7)),
                                decoration: IconDecoration(
                                  shadows: [
                                    Shadow(blurRadius: 5, offset: Offset(0, 0))
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              child: DecoratedIcon(
                                icon: Icon(FontAwesomeIcons.instagram,
                                    color: Color.fromARGB(240, 174, 7, 189)),
                                decoration: IconDecoration(
                                  shadows: [
                                    Shadow(blurRadius: 5, offset: Offset(0, 0))
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              child: DecoratedIcon(
                                icon: Icon(FontAwesomeIcons.facebookMessenger,
                                    color: Colors.blueAccent),
                                decoration: IconDecoration(
                                  shadows: [
                                    Shadow(blurRadius: 5, offset: Offset(0, 0))
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
