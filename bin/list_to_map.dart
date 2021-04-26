/// [ToMap<T>] Generic Type
///
extension ToMap<T> on List<T> {
  Map<T, E> toMap<E>(E Function(T) f) => {for (var key in this) key: f(key)};
}

void main(List<String> args) {
  final name = ['Taylan', 'Ali', 'Yasar', 'Eduardo'];

  final mapLength = name.toMap((e) => e.length);
  print(mapLength);
  final map = name.toMap((s) => s);
  print(map);
}
