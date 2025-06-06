`Row` organiza widgets **horizontalmente** (de izquierda a derecha).

```
import 'package:flutter/material.dart';

class RowExample extends StatelessWidget {
  const RowExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 80), // Espacio desde arriba
      child: SizedBox(
        height: double.infinity, // Ocupar toda la altura disponible
        child: const Row(
          // Alineación horizontal (eje principal en Row)
          mainAxisAlignment: MainAxisAlignment.center,

          // Ocupar todo el espacio horizontal disponible
          mainAxisSize: MainAxisSize.max,

          // Hijos del Row
          children: [
            // Expanded toma el espacio disponible antes de los demás elementos
            Expanded(child: Text("Hola")),

            // Este texto solo ocupa el espacio que necesita
            Text("Carlos"),
          ],
        ),
      ),
    );
  }
}
```
