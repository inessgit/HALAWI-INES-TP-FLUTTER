import 'story.dart';

class CerveauHistoire{

  List<Story> _donneesHistoire=[
    Story(
        texteHist:"Votre voiture a crevé un pneu sur une route sinueuse au "
            "milieu de nulle part sans réception de téléphone portable. Vous"
            " décidez de faire du stop. Une camionnette rouillée s'arrête à côté"
            " de vous. Un homme avec un chapeau à larges bords et des yeux sans "
            "âme vous ouvre la porte du passager et vous demande : « Besoin d'un "
            "tour, mon garçon ?",
        choixUn:"Je vais monter; merci pour l'aide",
        choixDeux:"Mieux vaut lui demander d'abord s'il est un meurtrier"
    ),

    Story(
        texteHist:"Il hoche lentement la tête, déphasé par la question.",
        choixUn:"Au moins, il est honnête. Je vais monter.",
        choixDeux:"Attends, je sais comment changer un pneu."
    ),

    Story(
        texteHist:"Alors que vous commencez à conduire, l'inconnu commence à parler de sa relation avec sa mère. Il devient de plus en plus en colère de minute en minute. Il vous demande d'ouvrir la boîte à gants. À l'intérieur, vous trouverez un couteau ensanglanté, deux doigts coupés et une cassette d'Elton John. Il attrape la boîte à gants.",
        choixUn:"J'aime Elton John ! Donnez-lui la cassette.",
        choixDeux:"C'est lui ou moi ! Vous prenez le couteau et le poignardez."
    ),

    Story(
        texteHist:
        "Alors que vous franchissez le garde-corps et que vous vous dirigez vers les rochers déchiquetés en dessous, vous réfléchissez à la sagesse douteuse de poignarder quelqu'un alors qu'il conduit une voiture dans laquelle vous vous trouvez.",
        choixUn: 'Redemarrer!',
        choixDeux: ''),
    Story(
        texteHist:
        'Vous vous liez avec le meurtrier tout en croonant des couplets de Pouvez-vous sentir l''amour ce soir". Il vous dépose à la prochaine ville. Avant de partir, il vous demande si vous connaissez de bons endroits pour jeter des corps. Vous répondez : "Essayez la jetée"',
        choixUn: 'Redemarrer',
        choixDeux: ''),

    Story(
        texteHist:
        'Vous vous liez avec le meurtrier tout en croonant des couplets de Pouvez-vous sentir l''amour ce soir". Il vous dépose à la prochaine ville. Avant de partir, il vous demande si vous connaissez de bons endroits pour jeter des corps. Vous répondez : "Essayez la jetée"',
        choixUn: 'Redemarrer',
        choixDeux: '')

  ];

  String getStory(){
    return _donneesHistoire[_storyNumber].texteHist;
  }

  String getChoixUn(){
    return _donneesHistoire[_storyNumber].choixUn;
  }

  String getChoixDeux(){
    return _donneesHistoire[_storyNumber].choixDeux;
  }

  int _storyNumber=0;

  void nextStory(int choiceNumber) {
    if (choiceNumber == 1 && _storyNumber == 0) {
      _storyNumber = 2;
    }

    else if (choiceNumber == 2 && _storyNumber == 0) {
      _storyNumber = 1;
    }

    else if (choiceNumber == 1 && _storyNumber == 1) {
      _storyNumber = 2;
    }

    else if (choiceNumber == 2 && _storyNumber == 1) {
      _storyNumber = 3;
    }

    else if (choiceNumber == 1 && _storyNumber == 2) {
      _storyNumber = 5;
    }

    else if (choiceNumber == 2 && _storyNumber == 2) {
      _storyNumber = 4;
    }

    else if (_storyNumber == 3 || _storyNumber == 4 || _storyNumber == 5) {
      restart();
    }
  }

    void restart(){
      _storyNumber=0;
    }

    bool buttonShouldBeVisible(){
      if (_storyNumber==0 || _storyNumber==1 || _storyNumber==2){
        return true;
      }
      else{
        return false;
      }
    }
  }

