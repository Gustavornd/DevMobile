/*
 * Autor: Gustavo Rafael Nunes Durães
 * 
 * Objetivo: Execução dos exemplos dados em sala de aula com
 * algumas alterações com objetivo de teste a aprendizado. 
*/

void main() {
  /* 
    Exemplo 1
    Tipos de Variaveis
  */
  print("Exemplo 1: ");

  int idade = 25;
  double altura = 1.85;
  String nome = "Gustavo";
  bool matriculado = true;

  print("Nome: " +
      nome +
      "\nAltura: ${altura}" +
      "\nIdade: ${idade}" +
      "\nMatriculado em Dev Mobile: ${matriculado == true ? "Sim" : "Não"} ");

  /* 
    Exemplo 2
    If / Else
  */
  print("\n\nExemplo 2: ");
  double media = 60.0;
  if (media < 40.0) {
    print("Reprovado");
  } else {
    if (media < 60.0) {
      print("Recuperação");
    } else {
      print("Aprovado");
    }
  }

  media = 35.0;
  print(media < 40.0 ? "Reprovado" : "Aprovado");

  String? idioma;
  print(idioma ?? "Não Informado");

  idioma = "Português";
  print(idioma ?? "Não Informado");

  /* 
    Exemplo 3
    Switch / Case
  */
  print("\n\nExemplo 3: ");

  String linguagem = "Java";

  switch (linguagem) {
    case "Dart":
      print("É Dart!");
      break;
    case "Java":
      print("É Java!");
      break;
    case "C#":
      print("É C#!");
      break;
    default:
      print("Linguagem desconhecida");
  }

  /* 
    Exemplo 4
    Repetições (FOR, WHILE, DO/WHILE)
    FOREACH (uso conjunto com coleções)
  */
  print("\n\nExemplo 4: ");

  print("For");
  for (int i = 0; i < 5; i++) {
    print(i);
  }

  print("While");
  int j = 5;
  while (j < 10) {
    print(j);
    j++;
  }

  print("Do While");
  int k = 10;
  do {
    print(k);
    k++;
  } while (k <= 15);

  print("Foreach");
  List numeros = ["Um", "Dois", "Três", "Quatro"];
  numeros.add("Cinco");

  for (String numero in numeros) {
    print(numero);
  }

  /* 
    Exemplo 5
    Função com parâmetros
  */
  print("\n\nExemplo 5:");
  exibirdados("Celta", "Preto", 4567);

  /* 
    Exemplo 6
    Função com parâmetros opcionais
  */
  print("\n\nExemplo 6:");
  exibirForma("quadrado", largura: 4);

  /* 
    Exemplo 7
    Função com parâmetro tipo função
  */
  print("\n\nExemplo 7");
  calcularSalario(1000, calcularBonus);

  /* 
    Exemplo 8
    Função anônima (sem nome especificado)
  */
  print("\n\nExemplo 8");

  calcularSalario2(100.00, () {
    print("Calculo Customizado");
  });

  /* 
    Exemplo 9
    Lista Simples
  */
  print("\n\nExemplo 9");

  List<String> frutas = ["Morango", "Manga", "Melancia"];
  frutas.add("Banana");
  frutas.insert(0, "Abacaxi");
  frutas.removeAt(1);
  print(frutas.contains("Pera"));
  print(frutas.length);
  print(frutas);

  /*
    Exemplo 10
    Lista com objetos
  */
  print("\n\nExemplo 10");

  List<Usuario> usuarios = [];
  usuarios.add(Usuario("Wagner", 46));
  usuarios.add(Usuario("Gustavo", 24));
  usuarios.add(Usuario("Lucas", 29));
  usuarios.add(Usuario("Marina", 23));

  for (Usuario usuario in usuarios) {
    print("Nome: ${usuario.nome} // Idade: ${usuario.idade}");
  }

  /*
    Classe do exemplo 11
    Maps(conjunto de dados - chave/valor)
  */
  print("\n\nExemplo 11");

  Map<String, String> estados = Map();
  estados["SP"] = "São Paulo";
  estados["MG"] = "Minas Gerais";
  estados["RJ"] = "Rio de Janeiro";

  estados.forEach((key, value) => print("$key - $value"));

  /*
    Exemplo 12
    Classes e Objetos
  */
  print("\n\nExemplo 12");

  Pessoa pessoa1 = new Pessoa();
  pessoa1.nome = "Gustavo";
  pessoa1.altura = 1.90;
  pessoa1.idade = 24;
  pessoa1.dormir();
  print(pessoa1.nome);

  /*
    Exemplo 13
    Classes com atributo encapsulado
  */
  print("\n\nExemplo 13");

  Aluno aluno1 = new Aluno();
  aluno1.mostrarNome("Diana");
  aluno1.altura = 1.90;
  aluno1.idade = 24;

  print(aluno1.altura);
  print(aluno1.idade);

  //Fim
}

/*
  Função do exemplo 5 
  Função com parâmetros
*/
void exibirdados(String modelo, String cor, int registro) {
  print("Modelo: $modelo");
  print("Cor: $cor");
  print("Registro: $registro");
}

/*
  Função do exemplo 6
  Função com parâmetro opcionais
*/
void exibirForma(String forma, {int? comprimento, int? largura}) {
  print("Forma: $forma");
  print("Comprimento: $comprimento");
  print("Largura: $largura");
}

/*
  Funções do exemplo 7
  Função com parâmetro de tipo funcão
*/
void calcularBonus() {
  print("Seu bônus é de: 20");
}

void calcularSalario(double salario, Function funcaoParametro) {
  print("Seu salário é: $salario");
  funcaoParametro();
}

/*
  Função do exemplo 8
  Função anônima (Sem nome especificado)
*/
void calcularSalario2(double salario, Function funcaoParametro) {
  print("Seu salario é: $salario");
  funcaoParametro();
}

/*
  Classe do exemplo 10
  Lista com objetos
*/
class Usuario {
  String nome;
  int idade;

  Usuario(this.nome, this.idade);
}

/*
    Classe do exemplo 11
    Classe e Objetos
*/
class Pessoa {
  String? nome;
  int? idade;
  double? altura;

  void dormir() {
    print("$nome está dormindo");
  }
}

/*
    Classe do exemplo 13
    Classes com atributo encapsulado
*/
class Aluno {
  String? _nome;
  int? idade;
  double? altura;

  void mostrarNome(String nome) {
    this._nome = nome;
    print("Seu nome é: $_nome");
  }
}
