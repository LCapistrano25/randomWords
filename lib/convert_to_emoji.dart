String convertToEmoji({required Map<String, String> emojiMap, String text = ""}) {
  List<String> words = text.split(
      " "); //Utiliza o método split para criar uma lista de palavras conforme os espaços entre as palavras

  for (int i = 0; i < words.length; i++) { //Itera sobre as palavras da lista
    String word = words[i].toLowerCase(); // Ignorar maiúsculas e minúsculas

    if (emojiMap.containsKey(
        word)) { //Verificar se existe a palavra no dicionário
      words[i] = emojiMap[word]!; // Substituir palavra por emoji
    }
  }

  return words.join(" "); // Reunir as palavras em uma frase
}