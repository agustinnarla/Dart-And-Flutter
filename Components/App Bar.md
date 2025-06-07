```

home: Scaffold(
  appBar: AppBar(
    title: const Text("Mi super app"), // Título en la barra
    actions: [
      IconButton(
        onPressed: () {}, // Acción al tocar el ícono
        icon: const Icon(Icons.abc), // Ícono a la derecha
      )
    ],
    backgroundColor: Colors.black,   // Color de fondo de la AppBar
    foregroundColor: Colors.white,   // Color del texto e íconos
  ),
  backgroundColor: Colors.amber,     // Fondo del cuerpo (body)
  
  // Trajimos lo que creamos previamente
  body: const ButtonExample(),
)
```

**App Bar** -> Es la barra superior de nuestra app 

Se ubica en el **Scaffold** que es el esqueleto de la pantalla