
```
import 'package:flutter/material.dart';

class TextFieldExample extends StatelessWidget {
  const TextFieldExample({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(height: 60), // Espacio superior

        // Campo de texto para el email
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: "Ingresar tu email",
              border: OutlineInputBorder(),
            ),
          ),
        ),

        // Campo de texto para contraseña (oculto)
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: TextField(
            obscureText: true, // Oculta los caracteres
            decoration: InputDecoration(
              hintText: "Introduce la contraseña",
              prefixIcon: Icon(Icons.password), // Me permite poner un icono
              border: OutlineInputBorder(), // Redondea los bordes
            ),
          ),
        ),

        // Campo de texto multilínea con longitud máxima
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: TextField(
            maxLines: 3,        // Muestra hasta 3 líneas
            maxLength: 10,      // Máximo de 10 caracteres
            decoration: InputDecoration(
              hintText: "Introduce tu comentario",
              prefixIcon: Icon(Icons.abc_rounded),
              border: OutlineInputBorder(),
            ),
          ),
        ),
      ],
    );
  }
}
```

**ListView**: permite scroll si los widgets hijos superan la pantalla.