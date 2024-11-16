String pickToughestKid() {
  // Esta función devuelve el nombre de un "niño más fuerte".
  // Se usa en el ejemplo como valor predeterminado al asignar posiciones en un equipo.
  return 'John Doe';
}

void main() {
  // Ejemplo 1: Crear y manipular mapas básicos.

  // Crear un mapa donde las claves son nombres de islas hawaianas
  // y los valores son listas de playas en cada isla.
  var hawaiianBeaches = {
    'Oahu': ['Waikiki', 'Kailua', 'Waimanalo'],
    'Big Island': ['Wailea Bay', 'Pololu Beach'],
    'Kauai': ['Hanalei', 'Poipu']
  };
  print("Mapa inicial de playas hawaianas: $hawaiianBeaches");

  // Ejemplo 2: Crear mapas usando constructores.

  // Crear un mapa vacío utilizando un constructor.
  var searchTerms = Map();
  print("Mapa vacío creado con un constructor: $searchTerms");

  // Crear un mapa con tipos específicos para clave y valor.
  var nobleGases = Map<int, String>();
  print("Mapa vacío de gases nobles (clave: int, valor: String): $nobleGases");

  // Agregar un par clave-valor al mapa.
  nobleGases = {54: 'xenon'};
  print("Mapa de gases nobles después de agregar xenón: $nobleGases");

  // Recuperar un valor usando su clave.
  print("Valor asociado a la clave 54: ${nobleGases[54]}");
  assert(nobleGases[54] == 'xenon');

  // Verificar si el mapa contiene una clave específica.
  print("¿El mapa contiene la clave 54? ${nobleGases.containsKey(54)}");
  assert(nobleGases.containsKey(54));

  // Eliminar una clave y su valor del mapa.
  nobleGases.remove(54);
  print("Mapa de gases nobles después de eliminar la clave 54: $nobleGases");
  assert(!nobleGases.containsKey(54));

  // Ejemplo 3: Trabajar con claves y valores de un mapa.

  // Restablecer el mapa de playas hawaianas.
  hawaiianBeaches = {
    'Oahu': ['Waikiki', 'Kailua', 'Waimanalo'],
    'Big Island': ['Wailea Bay', 'Pololu Beach'],
    'Kauai': ['Hanalei', 'Poipu']
  };
  print("Mapa de playas hawaianas restablecido: $hawaiianBeaches");

  // Obtener todas las claves del mapa como una colección (Iterable).
  var keys = hawaiianBeaches.keys;
  print("Claves del mapa de playas hawaianas: $keys");
  assert(keys.length == 3);
  assert(Set.from(keys).contains('Oahu'));

  // Obtener todos los valores del mapa como una colección de listas (Iterable).
  var values = hawaiianBeaches.values;
  print("Valores del mapa de playas hawaianas: $values");
  assert(values.length == 3);
  assert(values.any((v) => v.contains('Waikiki')));

  // Verificar la presencia de claves en el mapa.
  print("¿El mapa contiene la clave 'Oahu'? ${hawaiianBeaches.containsKey('Oahu')}");
  assert(hawaiianBeaches.containsKey('Oahu'));
  print("¿El mapa contiene la clave 'Florida'? ${hawaiianBeaches.containsKey('Florida')}");
  assert(!hawaiianBeaches.containsKey('Florida'));

  // Ejemplo 4: Usar putIfAbsent para asignar valores condicionalmente.

  // Crear un mapa vacío para asignaciones de equipo.
  var teamAssignments = <String, String>{};

  // Agregar una asignación de equipo con `putIfAbsent`.
  // Si la clave no existe, ejecuta la función para generar un valor predeterminado.
  teamAssignments.putIfAbsent('Catcher', () => pickToughestKid());
  print("Mapa de asignaciones de equipo después de agregar 'Catcher': $teamAssignments");

  // Verificar que se agregó correctamente.
  assert(teamAssignments['Catcher'] != null);
  print("Asignación del Catcher: ${teamAssignments['Catcher']}");
}
