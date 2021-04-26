Example codes in `bin/`,

### 
```dart
  #1
  extension Range on int {
        List<int> toIncluding(int max, {int step = 1}) =>
            [for (int i = this; i <= max; i += step) i];
    }
```

```dart
  #2
  extension ToMap<T> on List<T> {
    Map<T, E> toMap<E>(E Function(T) f) => {for (var key in this) key: f(key)};
  }
```

```dart
  #3
  extension ToHashSetCheck<T> on List<T> {
  List<T> get toHashSetCheck => [
        ...{...this}
      ];
  }
```

Created from templates made available by Stagehand under a BSD-style
[license](https://github.com/dart-lang/stagehand/blob/master/LICENSE).
