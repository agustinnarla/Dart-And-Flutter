
```
void listLoop(){

  List<int> numbers = [1,2,3,4,5];

  for (int i = 0; i < numbers.length; i++) {
    print(numbers[i]);
  }
  
  for (var element in numbers) {
    print(element);
  }
  numbers.forEach(print);
}

```
  

```
void setLoop(){

  Set<int> numbers = {1,2,3,4,5};

  for (var element in numbers) {
    print("Set $element");
  }
  numbers.forEach(print);
}

```
  

```
void mapLoop(){

  Map<String,int> numbers = {"favNumber": 1, "birthday": 2};

   // Iterar sobre las entradas (clave y valor)
  for (var element in numbers.entries) {
    print("Map ${element.key}");
  }

  numbers.forEach((key, values){
    print(key);
  });
}
```