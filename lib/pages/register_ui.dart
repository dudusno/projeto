import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  String dropdownValue = 'Local';

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Meus Dados',
          style: TextStyle(color: Colors.grey),
        ),
        backgroundColor: Colors.grey[50],
        iconTheme: IconThemeData(
            //muda a cor do icone back
            color: Colors.grey),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: <Widget>[
          SizedBox(
            height: 70.0,
          ),
          Center(
            child: Material(
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              child: Container(
                height: 370,
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
                      padding: const EdgeInsets.fromLTRB(30, 20, 30, 20),
                      child: Text(
                        'Informe seu nome e o local de entrega:',
                        style: TextStyle(fontSize: 18, color: Colors.grey[700]),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
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
                              keyboardType: TextInputType.text,
                              textAlign: TextAlign.start,
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

                                contentPadding: EdgeInsets.all(10.0),
                                hintText: 'Nome Completo',
                                //labelText: '  Nome Completo',
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
                      padding: const EdgeInsets.all(10.0),
                      child: Material(
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Container(
                          //color: Colors.lightGreen,
                          width: 240.0,
                          height: 50.0,

                          decoration: BoxDecoration(
                              //border: Border.all(width: 0.0),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30.0))),

                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Theme(
                              data: theme.copyWith(primaryColor: Colors.red),
                              child: DropdownButton<String>(
                                value: dropdownValue,
                                isExpanded: true,
                                //elevation: 10,

                                style: TextStyle(
                                    color: Colors.black54, fontSize: 16),
                                underline: Container(

                                    //  height: 2,
                                    color: Colors.transparent),
                                onChanged: (String newValue) {
                                  setState(() {
                                    dropdownValue = newValue;
                                  });
                                },
                                items: <String>[
                                  'Local',
                                  'Escola1',
                                  'Escola2',
                                  'Escola3'
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(
                                      value,
                                    ),
                                  );
                                }).toList(),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Material(
                        elevation: 10,
                        //shadowColor: Colors.black,
                        borderRadius: BorderRadius.circular(30),
                        child: FlatButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/lista');
                          },
                          color: Colors.green[500],
                          shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0)),
                          child: Container(
                              width: 160.0,
                              height: 50.0,
                              child: Center(
                                  child: Text(
                                'Continuar',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 17),
                              ))),
                        ),
                      ),
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
