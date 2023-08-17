import 'dart:io';
void main(){
List<String> produtos = [];


imprimir (){

  for (var i = 0; i < produtos.length; i++) {
        print("ITEM $i - ${produtos[i]}");  
      }
}

remover (){

  print("*** Which one to remove? ***");
      imprimir();
        int item = int.parse(stdin.readLineSync()!); // notnull adicionado no
        //readLineSync
        produtos.removeAt(item);
        print ("*** Item removed ***");

  }

  {
  
  bool condicao = true;
  while (condicao){
    print (" *** Add a product *** ");
    String? text = stdin.readLineSync();
    if(text == "leave"){
      print(" *** Finished *** ");
      condicao = false;                         
    } else if ( text == "print"){
      imprimir();
    } else if (text == "remove"){
      remover();
    } else {
      produtos.add(text!);
      print ("\x1B[2J\x1B[0;0H");

      
    }
    
  }
  
}

} 