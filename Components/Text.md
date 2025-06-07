```
import 'package:flutter/material.dart';

class TextExample extends StatelessWidget {
  const TextExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Text(
          "Hola", // Texto a mostrar
          style: TextStyle(
            fontSize: 21, // Tamaño de fuente
            color: Colors.amber, // Color del texto
            fontWeight: FontWeight.bold, // Negrita
            fontStyle: FontStyle.italic, // Cursiva
            // backgroundColor: Colors.black, // Fondo del texto (opcional)
            decoration: TextDecoration.overline, // Línea arriba del texto
            decorationColor: Colors.blueAccent, // Color de la línea decorativa
            letterSpacing: 4, // Espaciado entre letras
          ),
          maxLines: 2, // Máximo de líneas que puede ocupar el texto
          overflow: TextOverflow.ellipsis, // Muestra "..." si el texto es muy largo
        )
      ],
    );
  }
}
```