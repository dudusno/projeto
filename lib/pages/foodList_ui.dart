import 'package:app/components/item_widget.dart';
import 'package:app/model/item_model.dart';
import 'package:flutter/material.dart';

class ListaAlimentos extends StatefulWidget {
  @override
  _ListaAlimentosState createState() => _ListaAlimentosState();
}

class _ListaAlimentosState extends State<ListaAlimentos> {
  double totalValor = 0;
  int totalItens = 0;

  @override
  Widget build(BuildContext context) {

    List<ItemModel> listItems = [
      ItemModel(nome: 'Alface',preco: 2.0,produtor: 'Santa',quantidade: 2,unidadeMedida: 'maço'),
       ItemModel(nome: 'Rúcula',preco: 2.0,produtor: 'Ricardo',quantidade: 2,unidadeMedida: 'maço'),
        ItemModel(nome: 'Cenoura',preco: 2.0,produtor: 'Beltrano',quantidade: 2,unidadeMedida: 'kg'),
    ];
    

    

    return Scaffold(
      // bottomNavigationBar: Container(
      //   height: 50,
      //   color: Colors.grey,
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //     crossAxisAlignment: CrossAxisAlignment.center,
      //     children: <Widget>[
      //       Icon(Icons.home),
      //       Icon(Icons.supervised_user_circle),
      //       Icon(Icons.home),
      //     ],
      //     ),
      //     ),
      appBar: AppBar(
        
        //leading: Icon(Icons.store),
        title: Text(
          'Feira da Semana                              (2)',
          style: TextStyle(color: Colors.grey[600]),
        ),
        backgroundColor: Colors.grey[50],
        iconTheme: IconThemeData(color: Colors.grey),

      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.green,
        label: Row(
          children: <Widget>[
            Icon(Icons.local_grocery_store),
            Text('(${0})')
          ],
        ),
        onPressed: () {
          Navigator.pushNamed(context, '/carrinho');
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

      //drawer: meuDrawer(),
      body: ListView.builder(
          itemCount: listItems.length,
          itemBuilder: (context, indice) {
            var item = listItems[indice];
            return ItemWidget(
              item: item,
            );
          }),
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
