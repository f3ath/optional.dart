part of optional_test;

// ignore: public_member_api_docs
final Matcher isEmptyOptional = equals(empty);
// ignore: public_member_api_docs
final Matcher throwsNoSuchMethodError = throwsA(const isInstanceOf<NoSuchMethodError>());

// ignore: public_member_api_docs
void runOperatorTests() {
  group('operator+', () {
    test('empty + 1 = empty', () {
      expect(empty + new Optional.of(1), isEmptyOptional);
    });
    test('1 + empty = empty', () {
      expect(new Optional.of(1) + empty, isEmptyOptional);
    });
    test('empty + empty = empty', () {
      expect(empty + empty, isEmptyOptional);
    });
    test('1 + 2 = 3', () {
      expect(new Optional.of(1) + new Optional.of(2), equals(new Optional.of(3)));
    });
  });
  group('operator-', () {
    test('empty - 1 = empty', () {
      expect(empty - new Optional.of(1), isEmptyOptional);
    });
    test('1 - empty = empty', () {
      expect(new Optional.of(1) - empty, isEmptyOptional);
    });
    test('empty - empty = empty', () {
      expect(empty - empty, isEmptyOptional);
    });
    test('3 - 2 = 1', () {
      expect(new Optional.of(3) - new Optional.of(2), equals(new Optional.of(1)));
    });
    test('-empty = empty', () {
      expect(-empty, equals(empty));
    });
    test('-1 = -1', () {
      expect(-new Optional.of(1), equals(new Optional.of(-1)));
    });
    test('-(-1) = 1', () {
      expect(-(-new Optional.of(1)), equals(new Optional.of(1)));
    });
    test('-"hello" throws NoSuchMethodError', () {
      expect(() => -new Optional.of('hello'), throwsNoSuchMethodError);
    });
  });
  group('operator*', () {
    test('empty * 2 = empty', () {
      expect(empty * new Optional.of(2), isEmptyOptional);
    });
    test('2 * empty = empty', () {
      expect(new Optional.of(2) * empty, isEmptyOptional);
    });
    test('empty * empty = empty', () {
      expect(empty * empty, isEmptyOptional);
    });
    test('2 * 3 = 6', () {
      expect(new Optional.of(2) * new Optional.of(3), equals(new Optional.of(6)));
    });
  });
  group('operator/', () {
    test('empty / 2 = empty', () {
      expect(empty / new Optional.of(2), isEmptyOptional);
    });
    test('2 / empty = empty', () {
      expect(new Optional.of(2) / empty, isEmptyOptional);
    });
    test('empty / empty = empty', () {
      expect(empty / empty, isEmptyOptional);
    });
    test('6 / 3 = 2', () {
      expect(new Optional.of(6) / new Optional.of(3), equals(new Optional.of(2)));
    });
  });
  group('operator~/', () {
    test('empty ~/ 2 = empty', () {
      expect(empty ~/ new Optional.of(2), isEmptyOptional);
    });
    test('2 ~/ empty = empty', () {
      expect(new Optional.of(2) ~/ empty, isEmptyOptional);
    });
    test('empty ~/ empty = empty', () {
      expect(empty ~/ empty, isEmptyOptional);
    });
    test('7 ~/ 3 = 2', () {
      expect(new Optional.of(7) ~/ new Optional.of(3), equals(new Optional.of(2)));
    });
  });
  group('operator^', () {
    test('empty ^ 2 = empty', () {
      expect(empty ^ new Optional.of(2), isEmptyOptional);
    });
    test('2 ^ empty = empty', () {
      expect(new Optional.of(2) ^ empty, isEmptyOptional);
    });
    test('empty ^ empty = empty', () {
      expect(empty ^ empty, isEmptyOptional);
    });
    test('0xF0 ^ 0x0F = 0xFF', () {
      expect(new Optional.of(0xF0) ^ new Optional.of(0x0F), equals(new Optional.of(0xFF)));
    });
  });
  group('operator&', () {
    test('empty & 2 = empty', () {
      expect(empty & new Optional.of(2), isEmptyOptional);
    });
    test('2 & empty = empty', () {
      expect(new Optional.of(2) & empty, isEmptyOptional);
    });
    test('empty & empty = empty', () {
      expect(empty & empty, isEmptyOptional);
    });
    test('0xF0 & 0x0F = 0x00', () {
      expect(new Optional.of(0xF0) & new Optional.of(0x0F), equals(new Optional.of(0x00)));
    });
  });
  group('operator%', () {
    test('empty % 2 = empty', () {
      expect(empty % new Optional.of(2), isEmptyOptional);
    });
    test('2 % empty = empty', () {
      expect(new Optional.of(2) % empty, isEmptyOptional);
    });
    test('empty % empty = empty', () {
      expect(empty % empty, isEmptyOptional);
    });
    test('27 % 4 = 3', () {
      expect(new Optional.of(27) % new Optional.of(4), equals(new Optional.of(3)));
    });
  });
  group('operator>>', () {
    test('empty >> 2 = empty', () {
      expect(empty >> new Optional.of(2), isEmptyOptional);
    });
    test('2 >> empty = empty', () {
      expect(new Optional.of(2) >> empty, isEmptyOptional);
    });
    test('empty >> empty = empty', () {
      expect(empty >> empty, isEmptyOptional);
    });
    test('0xF0 >> 4 = 0xFF', () {
      expect(new Optional.of(0xF0) >> new Optional.of(4), equals(new Optional.of(0x0F)));
    });
  });
  group('operator<<', () {
    test('empty << 2 = empty', () {
      expect(empty << new Optional.of(2), isEmptyOptional);
    });
    test('2 << empty = empty', () {
      expect(new Optional.of(2) << empty, isEmptyOptional);
    });
    test('empty << empty = empty', () {
      expect(empty << empty, isEmptyOptional);
    });
    test('0x0F << 4 = 0xF0', () {
      expect(new Optional.of(0x0F) << new Optional.of(4), equals(new Optional.of(0xF0)));
    });
  });
  group('operator~', () {
    test('~empty = empty', () {
      expect(~empty, isEmptyOptional);
    });
    test('~2 = ~2', () {
      expect(~new Optional.of(2), equals(new Optional.of(~2)));
    });
    test('~(~2) = 2', () {
      expect(~(~new Optional.of(2)), equals(new Optional.of(2)));
    });
  });
}