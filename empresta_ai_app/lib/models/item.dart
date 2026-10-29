class Item {
  final String id;
  final String nome;
  final String categoria;
  final String dono;
  final String apartamento;
  bool disponivel;

  //Contrutor
  Item({
    required this.id,
    required this.nome,
    required this.categoria,
    required this.dono,
    required this.apartamento,
    this.disponivel = true
  });
}