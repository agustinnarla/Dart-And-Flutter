```
import 'package:flutter/material.dart';

class ButtonExample extends StatelessWidget {
  const ButtonExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(), // Empuja hacia el centro vertical

        // Botón elevado con color rojo y eventos
        ElevatedButton(
          onPressed: () {
            print("pulsado");
          },
          onLongPress: () {
            print("manteniendo");
          },
          child: const Text("Soy un botón"),
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(Colors.red),
          ),
        ),

        // Botón con borde
        const OutlinedButton(
          onPressed: null, // Deshabilitado si no se define comportamiento
          child: Text("Hola"),
        ),

        // Botón de texto plano
        const TextButton(
          onPressed: null,
          child: Text("Carlitos"),
        ),

        // Botón flotante con ícono "+"
        FloatingActionButton(
          onPressed: () {
            print("Suma");
          },
          child: const Icon(Icons.add),
        ),

        // Botón solo con ícono
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.leaderboard),
        ),

        const Spacer(), // Empuja hacia el centro desde abajo
      ],
    );
  }
}
```


