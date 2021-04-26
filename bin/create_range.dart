import 'dart:collection' show IterableMixin;

extension Range on int {
  List<int> toIncluding(int max, {int step = 1}) =>
      [for (int i = this; i <= max; i += step) i];
}

class InclusiveRange with IterableMixin<int> {
  late Iterable<int> _values;

  InclusiveRange(int first, [int? second, int? third]) {
    if ((second ?? third) == null) {
      _values = 0.toIncluding(first);
    } else if (second != null) {
      _values = first.toIncluding(second, step: third ?? 1);
    }
  }

  @override
  Iterator<int> get iterator => _values.iterator;
}

void main(List<String> args) {
  final range = InclusiveRange(10, 20, 2);
  print(range);
}
