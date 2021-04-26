/// Generic Type
extension ToList on int {
  List toList(int max, {int step = 1}) {
    var list = <int>[];
    if (this < max) {
      for (var i = this; i <= max; i += step) {
        list.add(i);
      }
      return list;
    } else {
      return ['Exception..:)'];
    }
  }
}

void main(List<String> args) {
  var list = 12.toList(20);
  print(list);
  var list2 = 2.toList(1);
  print(list2);
}
