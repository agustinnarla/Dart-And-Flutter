
Deben estar en la carpeta lib

```
class IceCream{

//Atributos 
  String flavor = "Desconocido";
  bool sugarFree = false;
  double price = 4.99;
  String size = "Medium";


  void charge(){
    print("El precio de un helado de tamaño $size es de $price");
  }
}
```


Objetos 

```
  IceCream chocolate = IceCream();

  chocolate.flavor = "Chocolate";
  chocolate.price = 21;
  chocolate.charge();

  IceCream test = IceCream();
  test.charge();
```