import 'dart:convert';
import 'dart:io';
import 'package:creator/random_phrase.dart';
import 'package:creator/convert_to_emoji.dart';

void main() {
    while (true) {
    List<int> options = [1, 2, 3, 4, 5];
    print('\n1 - Gerar Desculpa Aleatoria para Faltar no Trabalho');
    print('2 - Gerar Nome de Wifi Aleatório');
    print('3 - Gerar Desafio do Dia');
    print('4 - Converter Texto em Emoji'); 
    print('5 - Sair\n');

    while (true) {
        var option = stdin.readLineSync();
        
        if (option == null || int.tryParse(option) == null || !options.contains(int.parse(option))) {
            print('Opção inválida');
            continue;
        }

        int? optionSelected = int.tryParse(option);
        if (optionSelected == 1) {
            String? sorry = randomPhrase(phrases: sorrys);
            print("\n$sorry"); 
            break;
        }

        if (optionSelected == 2) {
            String? wifi = randomPhrase(phrases: wifiNames);
            print("\n$wifi");
            break;
        }

        if (optionSelected == 3) {
            String? target = randomPhrase(phrases: dailyChallenges);
            print("\n$target");
            break;
        }

        if (optionSelected == 4) {
            print("\nDigite uma frase: ");
            String? text = stdin.readLineSync(encoding: utf8);
            String? phrase = convertToEmoji(emojiMap: emojiMap, text: text = text ?? "Vida feliz");
            print("\n$phrase");
            break;
        }

        if (optionSelected == 5) {
            print('Até mais!');
            return;
        }
      }
  }
}

Map<String, String> emojiMap = {
  "feliz": "😊",
  "triste": "😢",
  "amor": "❤️",
  "raiva": "😡",
  "sorriso": "😁",
  "coração": "💖",
  "choro": "😭",
  "fogo": "🔥",
  "estrela": "⭐",
  "palmas": "👏",
  "ok": "👌",
  "legal": "👍",
  "surpreso": "😲",
  "pensando": "🤔",
  "mundo": "🌍",
};

List<String> sorrys = [
  'Meu cachorro comeu meu computador.',
  'Fui escolhido para um experimento secreto da NASA.',
  'Minha casa foi invadida por patos e preciso resolver isso.',
  'Meu despertador estava no modo silencioso e se recusou a me acordar.',
  'O Wi-Fi foi sequestrado por alienígenas.',
  'Tive que salvar um gato preso em uma árvore… de novo.',
  'Fui chamado para ser dublê de um filme de ação de última hora.',
  'Minha geladeira prendeu minha mão e só agora consegui sair.',
  'A luz do meu quarto queimou e eu não conseguia encontrar a porta.',
  'Tentei atravessar a rua, mas um pombo me encarou e desisti.',
  'O elevador decidiu me prender entre dois andares por diversão.',
  'Minha avó me desafiou para uma batalha de videogame e não pude recusar.',
  'Meu carro se fantasiou de tartaruga e decidiu andar a 5km/h.',
  'A vizinha me chamou para ajudar a encontrar o gato invisível dela.',
  'Estava indo para o trabalho, mas fui confundido com um turista e levado para um city tour.',
  'O Google Maps me levou para o meio do nada e só agora achei o caminho de volta.',
  'Fui hipnotizado pelo meu café e perdi a noção do tempo.',
  'Minha sombra desapareceu e tive que sair procurando.',
  'Uma formiga roubou minha chave e precisei negociar para recuperar.',
  'A cidade teve um problema de gravidade temporária e fiquei flutuando em casa.',
  'Minha bicicleta fugiu de casa e precisei ir atrás dela.',
  'O trânsito estava parado porque um pato decidiu atravessar a rua lentamente.',
  'Minha inteligência artificial se rebelou e me bloqueou de sair de casa.',
  'Sonhei que já tinha ido trabalhar e só percebi o erro quando acordei.'
];

List<String> wifiNames = [
  "Conecte-se e descubra",
  "Pague o aluguel primeiro",
  "Você não tem permissão",
  "Senha? Qual senha?",
  "FBI Surveillance Van",
  "Hacker do Bem",
  "Wi-Fi da NASA",
  "Só funciona de madrugada",
  "Mãe, esse é o Wi-Fi",
  "Rouba, mas não cai",
  "404 Wi-Fi Not Found",
  "Ping Alto, Vida Triste",
  "A Senha Está no Roteador",
  "O Vizinho Tá On",
  "Carregando...",
  "Proibido para Android",
  "Wi-Fi de Hogwarts",
  "Mande Pix para conectar",
  "Sem Internet, Só Ilusão",
  "O Último a Conectar Lava a Louça"
];

List<String> dailyChallenges = [
  "Acordar 30 minutos mais cedo e planejar o dia",
  "Fazer 10 minutos de alongamento ou exercício físico",
  "Aprender uma nova palavra em inglês e usá-la em uma frase",
  "Passar o dia inteiro sem reclamar de nada",
  "Criar uma pequena função em Dart para resolver um problema simples",
  "Ficar 1 hora sem usar redes sociais",
  "Escrever 3 coisas pelas quais você é grato hoje",
  "Fazer uma boa ação para alguém sem esperar nada em troca",
  "Ler um artigo sobre tecnologia ou desenvolvimento de software",
  "Tomar banho gelado para sair da zona de conforto",
  "Assistir a um vídeo educativo sobre um tema novo",
  "Fazer uma refeição completamente saudável durante o dia",
  "Meditar por pelo menos 5 minutos",
  "Criar um mini-projeto rápido de programação",
  "Passar um dia inteiro sem açúcar ou fast food",
  "Ler 10 páginas de um livro",
  "Criar um post para o LinkedIn sobre algo que aprendeu",
  "Resolver um desafio de lógica ou programação",
  "Escrever um pequeno resumo do seu dia antes de dormir",
  "Sorrir para 5 pessoas aleatórias durante o dia"
];
