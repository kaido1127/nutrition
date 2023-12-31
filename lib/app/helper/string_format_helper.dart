class StringFormatHelper {

  static String upperCaseFirstCharOfString(String input) {
    if (input.isEmpty) {
      return '';
    }
    final words = input.split(' ');
    final formattedWords = words.map((word) {
      if (word.isNotEmpty) {
        return '${word[0].toUpperCase()}${word.substring(1).toLowerCase()}';
      }
      return '';
    }).toList();
    return formattedWords.join(' ');
  }
}
