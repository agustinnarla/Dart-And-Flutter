```
void nullability(){

  // Variable que puede ser nula
	  String? name = "Aris";
	  name = null;

	  String example2 = name ?? "Invitado";

  // Si es nulo q pase lo siguiente
	  name ??= "Pepe";
	  if(name != null){
	    print("Hola $name");
	  }
}
```