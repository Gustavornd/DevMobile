void main() {
  
  //Exemplo 1
  int  idade = 25;
  double altura = 1.85;
  String nome = "Gustavo";
  bool matriculado = true;
 
  print("Nome: " + nome 
        +"\nAltura: ${altura}"
        +"\nIdade: ${idade}"
        +"\nMatriculado em Dev Mobile: ${matriculado == true ? "Sim": "Não"} ");
  
  //Exemplo 2
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
  
  
  
  //Fim
}