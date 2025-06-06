### **Inferencia de tipos con `var`**

Dart infiere el tipo según el valor asignado.


```
var hi = 'hola';        // String 
var age = 12;           // int 
var example = 41.3;     // double 
var isAgus = true;      // bool`
```

---

### 🔧 **Tipos explícitos**

Usás tipos específicos para mejorar la legibilidad o evitar errores.


```
int number = 12;        // Solo enteros 
double decimal = 12.2;  // Solo decimales 
num age2 = 12.3;        // Puede ser int o double

// String nos permite concatenar
String name = 'Carlos'; 
String name2 = 'Pablito';  

// Verdadero o Falso
bool isHacker = true;`
```

---

### 🌀 **Tipo dinámico: `dynamic`**

Puede cambiar de tipo en tiempo de ejecución. 


`dynamic example1 = "Hola soy un ejemplo"; 
`

---

### 📌 **Constantes**

- `final`: se asigna una sola vez, en **tiempo de ejecución**
    
- `const`: constante **en tiempo de compilación**
    

```
final String example2 = 'agus'; // Puede depender de algo que se sepa en ejecución const String example3 = 'carlitos';  // Debe ser constante en compilación

```

### 🔁 **Conversión entre tipos**

```
// Convertir de String a int
String toNumber = "31";
int numberOk = int.parse(toNumber);

// Convertir de int a String
int numberToString = 615;
String stringOk = numberToString.toString();

// Convertir de String a double
String toDouble = "31.21";
double doubleOk = double.parse(toDouble);
```

#### Ejercicio 1 

```
void ejercicio1(){

  String date = "2003";
  int dateConvert = int.parse(date);
  int result = (2025 - dateConvert);
  print("Tienes -> $result Años");
}
```

#### Ejercicio 2

```
void ejercicio2(){

  double total = 222;
  double propina = 20;
  num totalPrice = (total * (propina/100)) + total;
  double totalPeople = 2;
  // toStringAsFixed -> Limito los decimales
  String totalForPeople = (totalPrice / totalPeople).toStringAsFixed(2);
  String result = ("El resultado es $totalForPeople");
  print(result);
}
```

##### Ingresar datos a partir de la terminal 

```
stdin.readLineSync()!
```

