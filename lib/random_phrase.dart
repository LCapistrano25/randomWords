import 'dart:math';

String randomPhrase({required List<String> phrases}) {
  return phrases[Random().nextInt(phrases.length)];
}
