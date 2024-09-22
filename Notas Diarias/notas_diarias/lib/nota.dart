class Nota {
  int? id;
  String? titulo;
  String? descricao;
  String? data;

  Nota(this.titulo, this.descricao, this.data);

  Nota.fromMap(Map<String, dynamic> map) {
    id = map['id'];
    titulo = map['titulo'];
    descricao = map['descricao'];
    data = map['data'];
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'titulo': titulo,
      'descricao': descricao,
      'data': data,
    };
  }
}
