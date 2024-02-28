void main() {
  
  //Exemplo 1
  print("Exemplo 1: ");
  
  int  idade = 25;
  double altura = 1.85;
  String nome = "Gustavo";
  bool matriculado = true;
 
  print("Nome: " + nome 
        +"\nAltura: ${altura}"
        +"\nIdade: ${idade}"
        +"\nMatriculado em Dev Mobile: ${matriculado == true ? "Sim": "Não"} ");
  
  //Exemplo 2
  print("\n\nExemplo 2: ");
  double media = 60.0;
  if(media < 40.0){
    print("Reprovado");
  }
  else{
    if(media < 60.0){
      print("Recuperação");
    }
    else{
      print("Aprovado");
    }
  }
  
  media = 35.0;
  print(media < 40.0 ? "Reprovado" : "Aprovado");
  
  String? idioma;
  print(idioma ?? "Não Informado");
  
  idioma = "Português";
  print(idioma ?? "Não Informado");
  
  
  
  //Exemplo 3
  print("\n\nExemplo 3: ");
  
  String linguagem = "Java";
  
  switch(linguagem){
    case "Dart" :
      print("É Dart!");
      break;
    case "Java" :
      print("É Java!");
      break;
    case "C#" :
      print("É C#!");
      break;
    default: 
      print("Linguagem desconhecida");
  }
  
  
  //Exemplo 4:
  print("\n\nExemplo 4: ");
  
  print("For");
  for(int i=0; i < 5; i++){
    print(i);
  }
  
  print("While");
  int j = 5;
  while(j<10){
    print(j);
    j++;
  }
  
  print("Do While");
  int k = 10;
  do{
    print(k);
    k++;
  }while(k <= 15);
  
  print("Foreach");
  List numeros = ["Um", "Dois", "Três", "Quatro"];
  numeros.add("Cinco");
  
  for(String numero in numeros){
    print(numero);
  }
  
  
  //Exemplo 5
  print("\n\nExemplo 5:");
  exibirdados("Celta", "Preto", 4567);
  
  
  //Exemplo 6
  print("\n\nExemplo 6:");
  exibirForma("quadrado", largura: 4);
  
  
  //Exemplo 7
  print("\n\nExemplo 7");
  calcularSalario(1000,calcularBonus);
  
}

//Função do exemplo 5
void exibirdados(String modelo, String cor, int registro){
  print("Modelo: $modelo");
  print("Cor: $cor");
  print("Registro: $registro");
}

//Função do exemplo 6
void exibirForma(String forma, {int? comprimento, int? largura}){
  print("Forma: $forma");
  print("Comprimento: $comprimento");
  print("Largura: $largura");
}


//Funções do exemplo 7
void calcularBonus(){
  print("Seu bônus é de: 20");
}
void calcularSalario(double salario, Function funcaoParametro){
  print("Seu salário é: $salario");
  funcaoParametro();
}