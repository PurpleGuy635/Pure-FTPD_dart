import 'dart:io';

void main(List<String> arguments) async {
  titre();
  await menu();
  revoir();
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

Future<void> menu() async {
  bool STOP = false;
  do {
    affichmenu();
    int choix = choixMenu(4);

    if (choix == 0) {
      print("quitter");
      STOP = true;
    } else if (choix == 1) {
      await update();
      wait();
      clear();
    } else if (choix == 2) {
      await upgrade();
      wait();
      clear();
    } else if (choix == 3) {
      await install();
      wait();
      clear();
    } else if (choix == 4) {
      await adduser();
      wait();
      clear();
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

Future<void> update() async {
  print("");
  print("mise a jour des dépôt");
  print("");

  String cmd = 'sudo apt-get update -y';
  ProcessResult result = await Process.run('bash', ['-c', cmd]);
  print(result.stdout);
  print(result.stderr);

  print("");
  print("mise a jour des dépôt ... Done");
  print("");
}

Future<void> upgrade() async {
  print("");
  print("mise a jour des paquet");
  print("");

  String cmd = 'sudo apt-get upgrade -y';
  ProcessResult result = await Process.run('bash', ['-c', cmd]);
  print(result.stdout);
  print(result.stderr);

  print("");
  print("mise a jour des paquet ... Done");
  print("");
}

Future<void> install() async {
  print("");
  print("instalation de Pure-ftpd");
  print("");

  String cmd = 'sudo apt-get install -y pure-ftpd';
  ProcessResult result = await Process.run('bash', ['-c', cmd]);
  print(result.stdout);
  print(result.stderr);

  print("");
  print("instalation complete");
  print("");
}

Future<void> adduser() async {
  print("");
  print("ajout d'un utilisateur");
  print("");
}

void wait() {
  print("");
  print("Appuyez sur entrer pour continuer ...");
  stdin.readLineSync();
  print("");
}

void clear() {
  print("");
  print("");
  print("");
  print("");
  print("");
  print("");
  print("");
  print("");
  print("");
  print("");
  print("");
  print("");
  print("");
  print("");
  print("");
  print("");
  print("");
  print("");
  print("");
  print("");
}
