`Columns` organiza widgets **verticalmente**.

```
import 'package:flutter/material.dart';

// Ejemplo de uso de Column con propiedades de alineación
class ColumnExample extends StatelessWidget {
  const ColumnExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // Personalización del contenedor
      color: const Color.fromARGB(255, 236, 217, 160),
      width: double.infinity,
      height: 200,

      // Widget Column para ordenar elementos verticalmente
      child: Column(
        // Alineación vertical (desde arriba hacia abajo)
        mainAxisAlignment: MainAxisAlignment.center,

        // Tamaño vertical máximo posible
        mainAxisSize: MainAxisSize.max,

        // Alineación horizontal (de izquierda a derecha)
        crossAxisAlignment: CrossAxisAlignment.center,

        // Hijos de la columna
        children: [
          Text("Hola, soy una columna"),
          Text("Carlitos"),
        ],
      ),
    );
  }
}
```