import 'dart:io';

void main(List<String> arguments) {
  titre();
  menu();
}

void titre() {
  print("");
  print("service Pure-FTPD");
  print("");
}

void revoir() {
  print("");
  print("au revoir");
  print("");
}

void menu() {
  bool STOP = false;
  do {
    affichmenu();
    int choix = choixMenu(4);

    if (choix == 0) {
      print("quitter");
      STOP = true;
    } else if (choix == 1) {
      print("mise a jour des dépôt");
    } else if (choix == 2) {
      print("mise a jour des pâquet");
    } else if (choix == 3) {
      print("instalation de pure-ftp");
    } else if (choix == 4) {
      print("ajout d'un utilisateur");
    }
  } while (STOP != true);
}

void affichmenu() {
  print("+-----------------------------------+");
  print("|       Pure-FTPD installator       |");
  print("+-----------------------------------+");
  print("|1- mise à jour les dépôt           |");
  print("|2- mise a jour des pâquet          |");
  print("|3- instalation du service Pure-FTPD|");
  print("|4- ajout d'un utilisateur          |");
  print("|                                   |");
  print("|0- quitter                         |");
  print("+-----------------------------------+");
}

int choixMenu(int nbChoix) {
  bool saisieValide = false;
  int i = -1;
  while (!saisieValide) {
    print("> Veuillez saisir une action (0-$nbChoix)");
    try {
      i = int.parse(stdin.readLineSync().toString());
      if (i >= 0 && i <= nbChoix) {
        saisieValide = true;
      } else {
        print("La saisie ne correspond à aucune action.");
      }
    } catch (e) {
      print("Erreur dans la saisie.");
    }
  }
  return i;
}
