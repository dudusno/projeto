import 'dart:ui';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //é possível rolar a tela quando o usuário clica no textfield
      body: SingleChildScrollView(
        child: Container(
            child: Stack(
          children: <Widget>[
            Material(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: DecoratedBox(
                  //usado para deixar a imagem desfocada
                  child: BackdropFilter(
                      filter: new ImageFilter.blur(sigmaX: 0.9, sigmaY: 0.9),
                      child: Container(
                        decoration: new BoxDecoration(
                            color: Colors.white.withOpacity(0.0)),
                      )),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/background.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Column(
              children: <Widget>[
                //espaço que permite a parte do login não ficar no topo da página
                SizedBox(
                  height: 160.0,
                ),
                Center(
                  child: Material(
                    elevation: 10,
                    color: Colors.white.withOpacity(0.1),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    shadowColor: Colors.black45,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        //border: Border.all(width: 1, color: Colors.transparent),
                        color: Colors.white.withOpacity(0.8),
                      ),
                      width: MediaQuery.of(context).size.width - 70,
                      //color: Colors.amber,
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 8, right: 8, top: 20),
                            child: Text(
                              'Feira Online',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  //fontStyle: FontStyle.normal,
                                  fontSize: 40,
                                  color: Colors.grey[700]),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Container(
                              width: 240.0,
                              height: 50.0,
                              //com o material é possível usar elevation no container
                              child: Material(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                elevation: 10.0,
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0, 27, 0),
                                  child: TextField(
                                    textAlign: TextAlign.start,
                                    keyboardType: TextInputType.number,
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.amber),
                                    //maxLength: 9,
                                    decoration: InputDecoration(
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.transparent),
                                      ),
                                      contentPadding: EdgeInsets.all(8.0),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(style: BorderStyle.none),
                                      ),
                                      hintText: 'Digite seu Telefone',

                                      //labelText: '  Digite seu telefone',
                                      prefixText: '+55 | ',

                                      //icon: Icon(Icons.phone_android)
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 0,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Material(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              elevation: 10.0,
                              child: FlatButton(
                                color: Colors.green[500],
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        new BorderRadius.circular(30.0)),
                                onPressed: () {
                                  Navigator.pushNamed(context, '/auth');
                                },
                                child: Container(
                                    width: 160.0,
                                    height: 50.0,
                                    child: Center(
                                        child: Text(
                                      'Cadastrar',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 17),
                                    ))),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              // crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,

                              children: <Widget>[
                                Text(
                                  'Sou um feirante! ',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.grey[700]),
                                ),
                                GestureDetector(
                                    onTap: () {
                                      Navigator.pushNamed(context, '/lista');
                                    },
                                    child: Text(
                                      'Entrar.',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                      ),
                                    )),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        )),
      ),
    );
  }
}
