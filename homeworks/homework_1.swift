import Foundation

// 1) Codifica 3 diccionarios en Swift, que contengan información que consideres pertinente.
var friends_dictionary = Dictionary<String, Any>()
var artists_dictionary = Dictionary<String, Any>()
var songs_dictionary = Dictionary<String, Any>()

friends_dictionary = [
    "Memo": 0,
    "Luis": 1,
    "Dafne": 2,
    "Natalia": 3
]

artists_dictionary = [
    "J Cole": "dope",
    "Rosalia": 1.2821,
    "Bad Bunny": true,
    "Beyonce": 9_000
]

songs_dictionary = [
    "Highest in the room": "yeah",
    "Fire Squad": true,
    "El Jacalito": artists_dictionary,
    "Alejandra": "00x0"
]

let some_dict = [friends_dictionary, artists_dictionary, songs_dictionary]
print(some_dict)
print()

// 2) Given a Person Struct
struct Person {
    var name: String
    var age: Int
    func compareAge(_ p: Person) -> String {
        switch p {
            case _ where p.age > age:
                return "\(p.name) is older than me"
            case _ where p.age < age:
                return "\(p.name) is younger than me"
            default:
                return "\(p.name) is the same age as me"
        }
    }
}


var p1 = Person(name: "Samuel", age: 24)
var p2 = Person(name: "Joel", age: 36)
var p3 = Person(name: "Lily", age: 24)

/*
  Expected output
    p1.compareAge(p2) ➞ "Joel is older than me."
    p2.compareAge(p1) ➞ "Samuel is younger than me."
    p1.compareAge(p3) ➞ "Lily is the same age as me."
*/

print(p1.compareAge(p2))
print(p2.compareAge(p1))
print(p1.compareAge(p3))
print()


// 3) Cajero automatico
func validatePIN (_ pin: String) -> Bool{
    let pin_count = pin.count
    return (pin_count == 4 || pin_count == 6) && pin == pin.filter("0123456789".contains)
}

/*
  Expected output
    validatePIN("1234") ➞ true
    validatePIN("12345") ➞ false
    validatePIN("a234") ➞ false
  1  validatePIN("") ➞ false
*/

print(validatePIN("1234"))
print(validatePIN("12345"))
print(validatePIN("a234"))
print(validatePIN(""))


// 4) Arreglo pop strings
/*
Crea una función en Swift que tome un
arreglo de enteros no negativos y cadenas
que devuelva un nuevo arreglo sin las cadenas.

Expected output:
    filterArray([1, 2, "a", "b"]) ➞ [1, 2]
    filterArray([1, "a", "b", 0, 15]) ➞ [1, 0, 15]
    filterArray([1, 2, "aasf", "1", "123", 123]) ➞ [1, 2, 123]
*/

var array = [Any]()
array = [0, 1, 2, "a", "b"]

func filterArray(_ array: [Any]) -> [Any]{
    var tmp = [Any]()
    for element in array {
        if let int_element = element as? Int {
            tmp += [element]
        }
    }
    return tmp
}
print(filterArray([1, 2, "a", "b"]))
print(filterArray([1, "a", "b", 0, 15]))
print(filterArray([1, 2, "aasf", "1", "123", 123]))

// 5) Vehiculo
/*
Crea una clase en Swift que modele un Vehículo.
Esta clase deberá contener los atributos:
    - nombre
    - modelo
    - kilometraje
    - precio
así como el método conducir, que desplegará un mensaje indicando el nombre
del vehículo que se está conduciendo.
*/

class Vehicle {
    var nombre: String?
    var modelo: String?
    var kilometraje: Double?
    var precio: Double?

    func conducir() -> String {
        return "Nombre: \(nombre)"
    }
}

class Compacto: Vehicle{
    var num_puertas: Int?
    var altura: Float?
    var vel_max: Double?

    func get_info_y_puertas() -> String{
        return "El auto compacto \(super.nombre) tiene \(num_puertas) puertas"
    }
}

class Camion: Vehicle{
    var num_ejes: Int?
    var tamano_tanque: Double?
    var tipo_camion: String?

    func get_info_y_num_ejes() -> String{
        return "El camion \(super.nombre) tiene \(num_ejes) ejes"
    }
}


let v = Vehicle()
v.nombre = "Jetta"
print(v.conducir())

let com = Compacto()
com.nombre = "Fiat"
com.num_puertas = 3
print(com.get_info_y_puertas())

let cam = Camion()
cam.nombre = "Mercedez"
cam.num_ejes = 4
print(cam.get_info_y_num_ejes())
