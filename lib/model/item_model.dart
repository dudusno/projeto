class ItemModel {
  ItemModel(
      {this.nome,
      this.produtor,
      this.preco,
      this.unidadeMedida,
      this.quantidade});

  String nome;

  String produtor;

  double preco;

  String unidadeMedida;

  int quantidade;

  setNome(String value) => nome = value;

  setProdutor(String value) => produtor = value;

  setPreco(double value) => preco = value;

  setUnidadeMedida(String value) => unidadeMedida = value;

  setQuantidade(int value) => quantidade = value;

  increment() {
    this.quantidade++;
  }

  decrement() {
    this.quantidade--;
  }
}
