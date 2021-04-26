abstract class UnfiedUtil {
  static String toUnfied(String str1, String str2) => '$str1$str2';
}

extension UnfiedStr on String {
  String toUnfied(String oldStr) {
    if (this != oldStr) {
      return '${this}$oldStr';
    } else {
      throw Exception('Must be different value!!');
    }
  }
}

void main(List<String> args) {
  var str1 = 'Taylan';
  var str2 = 'YILDIZ';
  var newStr = UnfiedUtil.toUnfied(str1, str2);
  print(newStr);

  print('Taylan'.toUnfied('Yildiz'));

  /// [Exception]
  /*
  ** print('Taylan'.toUnfied('Taylan'));
  */
}
