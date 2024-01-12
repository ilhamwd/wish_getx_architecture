abstract class Helpers {
  static String addLeadingZero(num source, {int digits = 2}) {
    return source
        .toString()
        .padLeft(digits, List.generate(digits - 1, (index) => "0").join());
  }
}
