extension ToMap<T> on List<T> {
  Map<T, E> toMap<E>(E Function(T) f) => {for (var key in this) key: f(key)};
}

void main(List<String> args) {
  final names = ['this', 'is', 'my', 'name'];
  final map = names.toMap((s) => s);
  print(map);
}
