import 'package:flutter/material.dart';

class SacolaPage extends StatefulWidget {
  @override
  _SacolaPageState createState() => _SacolaPageState();
}

class _SacolaPageState extends State<SacolaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Meu Carrinho',
          style: TextStyle(color: Colors.grey),
        ),
        backgroundColor: Colors.grey[50],
        iconTheme: IconThemeData(color: Colors.grey),
      ),
      floatingActionButton: FloatingActionButton.extended(
        //backgroundColor: Colors.orange,
        label: Row(
          children: <Widget>[Icon(Icons.add), Text('Nova Sacola')],
        ),
        onPressed: () {
          Navigator.pushNamed(context, '/lista');
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      //drawer: meuDrawer(),
      body: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, indice) {
            return cardSacola();
          }),
    );
  }

  Widget cardSacola() {
    return ListTile(
      title: Text('Data'),
      trailing: Icon(Icons.arrow_forward_ios),
      subtitle: Text('Entrega: 21/2'),
    );
  }

  Widget meuDrawer() {
    return Container(
      width: 250,
      child: Drawer(
          child: Column(
        children: <Widget>[
          Expanded(
            child: ListView(
              children: <Widget>[
                ListTile(
                  title: Align(
                    alignment: FractionalOffset.centerRight,
                    child: InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.grey[700],
                        )),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.shopping_basket, color: Colors.grey[700]),
                  title: Align(
                      child: Text('Minha Sacola',
                          style: TextStyle(color: Colors.green[700])),
                      alignment: Alignment(-1.3, 0)),
                  onTap: () {
                    Navigator.pushNamed(context, '/sacola');
                  },
                ),
                ListTile(
                  //contentPadding: EdgeInsets.all(),
                  leading: Icon(Icons.store, color: Colors.grey[700]),
                  title: Align(
                      child: Text('Feira da Semana',
                          style: TextStyle(color: Colors.green[700])),
                      alignment: Alignment(-1.3, 0)),
                  onTap: () {
                    Navigator.pushNamed(context, '/lista');
                  },
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: <Widget>[
                Divider(),
                ListTile(
                  leading: Icon(
                    Icons.settings,
                    color: Colors.grey[700],
                  ),
                  //title: Text('Meus Dados'),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
