import 'package:app/model/item_model.dart';
import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  final ItemModel item;

  const ItemWidget({Key key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final controller = Provider.of<Controller>(context);

    return Padding(
      padding: EdgeInsets.fromLTRB(20, 30, 20, 0),
      child: Material(
        elevation: 10,
        //shadowColor: Colors.orange,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        child: Container(
          width: 300,
          height: 150,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              color: Colors.grey[100]),
          //color: Colors.grey[400],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(35, 10, 35, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      '${item.nome}',
                      style: TextStyle(fontSize: 22, color: Colors.grey[700]),
                    ),
                    Text(
                      'R\$ ${item.preco}',
                      style: TextStyle(fontSize: 20, color: Colors.purple),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(35, 0, 35, 0),
                child: Row(
                  children: <Widget>[
                    Text(
                      'Produtor: ${item.produtor}',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(35, 10, 20, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      '${item.unidadeMedida}',
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                    
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      
                      
                        Padding(
                          padding: EdgeInsets.only(right: 15),
                                                  child: IconButton(
                            icon: Icon(Icons.local_grocery_store,
                            color: Colors.grey,),
                            onPressed: (){},
                          ),
                        )
                        // IconButton(
                        //     icon: Icon(
                        //       Icons.remove_circle,
                        //       size: 20,
                        //       color: Colors.deepOrange[400],
                        //     ),
                        //     onPressed: item.decrement(),
                        //   ),
                        
                        //  Text(
                        //       '${item.quantidade}',
                        //       style: TextStyle(fontSize: 16),
                        //     ),
                        // IconButton(
                        //     icon: Icon(
                        //       Icons.add_circle,
                        //       size: 20,
                        //       color: Colors.blue[400],
                        //     ),  
                        //     onPressed: () => item.increment(),

                        //   ),
                        
                      
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
