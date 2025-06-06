
Tienen clave y valor

```
void mapExample() {

  // Declaración e inicialización del mapa con claves tipo String y valores tipo int
  Map<String, int> people = {
    "Carlos": 1,
    "Agus": 2,
  };

  // Agregar múltiples pares clave-valor
	  people.addAll({"Carlitos": 21});

  // Agregar un nuevo elemento directamente
	  people["Pikachu"] = 21;

  // Modificar un valor existente (sobrescribe el anterior)
	  people["Agus"] = 3;

  // Eliminar un elemento por clave
	  people.remove("Pikachu");

  // Obtener todas las claves del mapa (Iterable<String>)
	  print(people.keys);

  // Obtener todos los valores del mapa (Iterable<int>)
	  print(people.values);

  // Verificar si existe una clave específica
	  print(people.containsKey("Agus"));  // true

  // Verificar si existe un valor específico
	  print(people.containsValue(2));   

  // Obtener la cantidad de elementos
	  print(people.length); // 2

  // Vaciar el mapa
	  people.clear();

}
```