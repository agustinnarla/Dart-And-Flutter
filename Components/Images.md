```
import 'package:flutter/material.dart';

class ImageExample extends StatelessWidget {
  const ImageExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      
        // Imagen desde internet (vía URL)
        Image.network(
          "https://docs.flutter.dev/assets/images/dash/dash-fainting.gif",
        ),

        // Imagen desde assets locales
        Image.asset(
          "assets/images/BaronNashorFigure.jpg",
          height: 100, // Altura fija
        ),
      ],
    );
  }
}
```

Es importante saber que si quiero poner imágenes desde local, debo agregar la ruta en el archivo 
**pubspec.yaml**

```
flutter:
  uses-material-design: true
  assets:
    - assets/images/
```