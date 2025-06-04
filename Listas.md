```
void listExample() {
  // Arrays
  List<String> name = ["Carlitos", "Pepe"];
  List<String> name2 = ["Juan"];

  print(name[0]); 
  print(name[1]); 

  // Último valor
  print(name.last); 

  // Primer valor
  print(name.first); 

  // Longitud
  print(name.length); 

  // Último valor usando índice
  print(name[name.length - 1]);

  // Reemplazar
  name[1] = "Agus";

 

  // Eliminar
	  name.remove("Agus");
  // Remover por posición 
	  name.removeAt(1); 
  // Remover todo 
	  name.clear(); 


  // Agregar
	  name.add("Pepe");
  // Agregar todos los valores de otra lista 
	  name.addAll(name2);
  // Ingresar en una posición especifica
	  name.insert(1, "Ramon");


}
```