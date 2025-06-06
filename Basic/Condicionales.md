```
void ejercicio3(){

  print("Ingresa un número");
  String number = stdin.readLineSync()!;
  if(int.parse(number) >= 0){
    print("El $number es positivo");
  }else{
    print("El $number es negativo");
  }
 }
```

```
void ejercicio4(){

  print("Ingresa un número del 1 al 12");
  int number = int.parse(stdin.readLineSync()!);

  switch (number) {
    case 1:
          print("Enero");
      break;
    case 2:
          print("Febrero");
      break;
    default:
      print("No existe ese mes");
  }
}
```