void main(){
 Persona p = new Persona("Felo", "Meza", 23, 323232, "sajhdas@fhasj.com");
  
  print(p);
  
  Animal a = new Animal(raza: "gato",propietario: "Jhon Doe",fechanacimiento: "13may",vacunas: 3);
  
  print(a.toString());
}

class Persona{
  String nombre ="";
  String apellido="";
  int edad =0;
  int telefono=0;
  String email= "";
  
  Persona(String n, String a, int e, int t, String c){
    this.nombre = n;
    this.apellido = a;
    this.edad= e;
    this.telefono =t;
    this.email =c;
    
    
    }
  }


class Animal{
  final String raza;
  final String propietario;
  final String fechanacimiento;
  final int vacunas;
  
  
  
  Animal({required this.raza, required this.fechanacimiento, required this.propietario, required this.vacunas }){}
  
    
    @override
  String toString() {
  return 'Animal{raza: ${raza}, propietario: ${propietario}}';
     
    }
}

