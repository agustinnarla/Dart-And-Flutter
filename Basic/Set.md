
No se pueden cargar valores duplicados.
No tiene orden

```
void setExample() {
	  // Lista con valores duplicados
  List<String> newName = ["Agus", "Agus"];

	  // Convertir lista a set para eliminar duplicados
  Set<String> name = Set.from(newName);

	  // Agregar nuevos elementos
  name.add("Carlitos");
  name.add("Perez");

	  // Verificar si un elemento está presente
  bool result = name.contains("Carlitos");
  print("¿Contiene 'Carlitos'? $result");

	  // Convertir de Set a Lista (si es necesario)
  List<String> nameList = name.toList();

	  // Imprimir el set
  print("Set: $name");
  print("Lista convertida desde Set: $nameList");
}
```