import 'dart:collection';

abstract class UtilList {
  static List<T> addedList<T>(List<T> list) {
    final temp = <T>[];
    var existList = HashSet<T>();
    for (var l in list) {
      if (existList.add(l)) temp.add(l);
    }
    return temp;
  }
}

final hash = HashSet();

extension RangeAdded<T> on List<T> {
  bool set(value) {
    if (hash.add(value)) return true;
    return false;
  }

  List<T> added() => [
        for (var l in this)
          if (set(l)) l
      ];
}

extension Rnage on int {
  List<int> toIncluding(int max, {int step = 1}) =>
      [for (int i = this; i <= max; i += step) i];
}

class InclusiveRange with IterableMixin<int> {
  late Iterable<int> _value;
  InclusiveRange(int first, [int? second, int? thrid]) {
    if ((second ?? thrid) == null)
      _value = 0.toIncluding(first);
    else if (second != null)
      _value = first.toIncluding(second, step: thrid ?? 1);
  }
  @override
  Iterator<int> get iterator => _value.iterator;
}

void main(List<String> args) {
  // var list = UtilList.addedList([12, 44, 12, 44, 3, 3, 3, 2]);
  // var list2 = UtilList.addedList(['a', 'a', 'b', 'c', 'c']);

  // [UtilList] out [12, 44, 3, 2]
  // print(list);
  // print(list2);

  /// [Extension]
  var range = [12, 12, 33, 12, 3, 3, 2].added();
  print(range);

  final createRange = InclusiveRange(10, 20, 2);
  print(createRange);
}
