class Persona {
  String nombre;
  String apellido;
  int edad;

  // Constructor principal con asserts
  Persona(this.nombre, this.apellido, this.edad)
      : assert(edad >= 18, 'La edad debe ser mayor o igual a 18') {
    print("Constructor principal ejecutado");
    print("Nombre: $nombre, Apellido: $apellido, Edad: $edad");

    if (edad >= 18) {
      print("Es mayor de edad\n");
    }
  }

  // Constructor nombrado para recibir datos de un Map
  Persona.ApiData(Map<String, dynamic> data)
      : nombre = data['nombre'],
        apellido = data['apellido'],
        edad = data['edad'] {
    print("Constructor ApiData ejecutado");
    print("Nombre: $nombre, Apellido: $apellido, Edad: $edad");

    if (edad >= 18) {
      print("Es mayor de edad\n");
    }
  }

  // Sobrescribiendo toString()
  @override
  String toString() {
    return "Persona: $nombre $apellido, Edad: $edad años.";
  }
}

void main() {
  // Instanciando con constructor principal
  var persona1 = Persona("Juan", "Pérez", 20);
  print(persona1.toString());

  // Instanciando con constructor nombrado ApiData
  var persona2 = Persona.ApiData({
    'nombre': 'Ana',
    'apellido': 'García',
    'edad': 25,
  });
  print(persona2.toString());
}
