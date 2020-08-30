import 'package:flutter/material.dart';

class AuthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[50],
        iconTheme: IconThemeData(
            //muda a cor do icone back
            color: Colors.grey),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: Column(
        children: <Widget>[
          SizedBox(
            height: 70.0,
          ),
          Center(
            child: Material(
              color: Colors.white,
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  border: Border.all(width: 1, color: Colors.transparent),
                  color: Colors.brown[50],
                ),
                width: MediaQuery.of(context).size.width - 70,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                      child: Text(
                        'Informe o código enviado para o número xxxx-xxxxx:',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey[700],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                      child: Container(
                        width: 240,
                        child: Material(
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          shadowColor: Colors.black,
                          child: Theme(
                            data: theme.copyWith(primaryColor: Colors.red),
                            child: TextField(
                              //keyboardType: TextInputType.,
                              //obscureText: true,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 16,
                              ),
                              decoration: InputDecoration(
                                labelStyle: theme.textTheme.caption
                                    .copyWith(color: theme.primaryColor),
                                //para deixar o underline obrigatorio do flutter transparente
                                focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent),
                                ),
                                //hintText: '******',
                                // labelStyle: ,
                                // alignLabelWithHint: Alignment.center,
                                contentPadding: EdgeInsets.all(10.0),
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(40)),
                                    borderSide: BorderSide(
                                      style: BorderStyle.none,
                                      width: 0,
                                    )),
                                //icon: Icon(Icons.phone_android)
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 15),
                      child: Material(
                        elevation: 10,
                        borderRadius: BorderRadius.circular(30),
                        child: FlatButton(
                          color: Colors.green[500],
                          shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0)),
                          child: Container(
                              width: 160.0,
                              height: 50.0,
                              child: Center(
                                  child: Text('Confirmar',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 17,
                                          fontStyle: FontStyle.normal)))),
                          onPressed: () {
                            Navigator.pushNamed(context, '/register');
                          },
                        ),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.fromLTRB(8, 5, 8, 8),
                        child: Text(
                          'Enviar Novo Código',
                          //textHeightBehavior: ,
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.grey[700],
                            decoration: TextDecoration.underline,
                          ),
                        )),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 100,
          )
        ],
      )),
    );
  }
}
