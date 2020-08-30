import 'package:app/model/item_model.dart';

class Controller {
  List<ItemModel> listItems = [
    ItemModel(
        nome: 'Alface',
        produtor: 'ProdutorA',
        preco: 2.0,
        unidadeMedida: 'maço',
        quantidade: 1),
  ];

  addItem(ItemModel item) {
    listItems.add(item);
  }
}
