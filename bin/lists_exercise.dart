void main() {
  // Ejemplo 1: Uso básico de listas

  // Crear una lista vacía de cadenas (strings).
  var grains = <String>[];
  print("Lista inicial de granos vacía: $grains");

  // Verificar si la lista está vacía.
  assert(grains.isEmpty);
  print("¿La lista de granos está vacía? ${grains.isEmpty}");

  // Agregar elementos a la lista.
  grains.add('barley');
  grains.add('buckwheat');
  grains.add('oats');
  grains.add('rice');
  print("Después de agregar granos: $grains");

  // Verificar si la lista ya no está vacía.
  assert(grains.isNotEmpty);
  print("¿La lista de granos ya no está vacía? ${grains.isNotEmpty}");

  // Mostrar el contenido de la lista.
  print("Contenido de la lista de granos: $grains");

  // Ejemplo 2: Operaciones avanzadas con listas

  // Crear una lista usando una lista literal.
  var fruits = ['apples', 'oranges'];
  print("Lista inicial de frutas: $fruits");

  // Agregar un solo elemento a la lista.
  fruits.add('kiwis');
  print("Después de agregar 'kiwis': $fruits");

  // Agregar múltiples elementos a la lista.
  fruits.addAll(['grapes', 'bananas']);
  print("Después de agregar 'grapes' y 'bananas': $fruits");

  // Insertar un elemento en un índice específico.
  fruits.insert(0, 'strawberries');
  print("Después de insertar 'strawberries' al inicio: $fruits");

  // Obtener la longitud de la lista.
  print("Cantidad de frutas en la lista: ${fruits.length}");
  assert(fruits.length == 6);

  // Eliminar un elemento específico por índice.
  var appleIndex = fruits.indexOf('apples');
  print("Índice de 'apples' en la lista: $appleIndex");
  fruits.removeAt(appleIndex);
  print("Después de eliminar 'apples': $fruits");
  assert(fruits.length == 5);

  // Eliminar todos los elementos de la lista.
  fruits.clear();
  print("Después de vaciar la lista de frutas: $fruits");
  assert(fruits.isEmpty);

  // Ejemplo 3: Crear listas con constructores.

  // Crear una lista prellenada con un valor.
  var vegetables = List.filled(99, 'broccoli');
  print("Lista de vegetales prellenada con 'broccoli': ${vegetables.sublist(0, 5)}... (${vegetables.length} elementos)");
  assert(vegetables.every((v) => v == 'broccoli'));

  // Ejemplo 4: Acceso y ordenamiento de elementos en una lista.

  // Restablecer la lista de frutas.
  fruits = ['apples', 'oranges'];
  print("Lista de frutas restablecida: $fruits");

  // Acceder a un elemento de la lista por su índice.
  print("Primer elemento en la lista de frutas: ${fruits[0]}");
  assert(fruits[0] == 'apples');

  // Encontrar el índice de un elemento en la lista.
  print("Índice de 'apples' en la lista: ${fruits.indexOf('apples')}");
  assert(fruits.indexOf('apples') == 0);

  // Ordenar una lista alfabéticamente.
  fruits = ['bananas', 'apples', 'oranges'];
  print("Lista de frutas antes de ordenar: $fruits");
  fruits.sort((a, b) => a.compareTo(b));
  print("Lista de frutas después de ordenar: $fruits");
  assert(fruits[0] == 'apples');

  // Ejemplo 5: Listas con tipos estrictos.

  // Crear una lista vacía que debe contener solo cadenas.
  fruits = <String>[];
  fruits.add('apples');
  print("Lista de frutas con un solo elemento: $fruits");

  // Acceder al primer elemento y verificar su tipo.
  var fruit = fruits[0];
  print("Primer elemento de la lista: $fruit (tipo: ${fruit.runtimeType})");
  assert(fruit is String);

  // Mostrar la lista final.
  print("Contenido final de la lista de frutas: $fruits");
}
