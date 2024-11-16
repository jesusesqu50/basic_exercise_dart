void main() {
  // Crear un conjunto vacío de cadenas de texto.
  // Los conjuntos son colecciones no ordenadas de elementos únicos.
  var ingredients = <String>{};
  print("Conjunto inicial de ingredientes vacío: $ingredients");

  // Agregar elementos al conjunto.
  // La función addAll permite agregar múltiples elementos al mismo tiempo.
  ingredients.addAll(['gold', 'titanium', 'xenon']);
  print("Después de agregar 'gold', 'titanium' y 'xenon': $ingredients");
  assert(ingredients.length == 3); // El conjunto ahora tiene 3 elementos únicos.

  // Intentar agregar un elemento duplicado no cambia el conjunto.
  ingredients.add('gold');
  print("Intentando agregar 'gold' nuevamente (duplicado): $ingredients");
  assert(ingredients.length == 3); // El tamaño sigue siendo 3.

  // Eliminar un elemento del conjunto.
  ingredients.remove('gold');
  print("Después de eliminar 'gold': $ingredients");
  assert(ingredients.length == 2); // Ahora tiene 2 elementos.

  // Crear un conjunto utilizando un constructor.
  var atomicNumbers = Set.from([79, 22, 54]);
  print("Conjunto creado usando Set.from con números atómicos: $atomicNumbers");

  // Crear un conjunto usando una notación literal de conjunto.
  ingredients = Set<String>();
  ingredients.addAll(['gold', 'titanium', 'xenon']);
  print("Ingredientes restablecidos usando un conjunto literal: $ingredients");

  // Verificar si un elemento está en el conjunto.
  print("¿Contiene 'titanium'? ${ingredients.contains('titanium')}");
  assert(ingredients.contains('titanium'));

  // Verificar si todos los elementos de una lista están en el conjunto.
  print("¿Contiene 'titanium' y 'xenon'? ${ingredients.containsAll(['titanium', 'xenon'])}");
  assert(ingredients.containsAll(['titanium', 'xenon']));

  // Crear la unión de dos conjuntos.
  var nobleGases = Set<String>.from(['xenon', 'argon']);
  print("Conjunto de gases nobles: $nobleGases");
  var union = ingredients.union(nobleGases);
  print("Unión de ingredientes y gases nobles: $union");

  // Crear la intersección de dos conjuntos.
  var intersection = ingredients.intersection(nobleGases);
  print("Intersección de ingredientes y gases nobles: $intersection");
  assert(intersection.length == 1); // Solo tienen un elemento en común.
  assert(intersection.contains('xenon')); // 'xenon' está en ambos conjuntos.
}
