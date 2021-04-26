Example codes in `bin/`,

### 
```dart
  extension Range on int {
        List<int> toIncluding(int max, {int step = 1}) =>
            [for (int i = this; i <= max; i += step) i];
    }

    void main(List<String> args) {
        final range = InclusiveRange(10, 20, 2);
        print(range);
    }
```

Created from templates made available by Stagehand under a BSD-style
[license](https://github.com/dart-lang/stagehand/blob/master/LICENSE).
