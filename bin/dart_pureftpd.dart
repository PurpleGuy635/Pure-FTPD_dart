void main(List<String> arguments) {
  titre();
  menu();
}

void titre() {
  print("");
  print("service Pure-FTPD");
  print("");
}

void menu() {
  affichmenu();
  selectmenu();
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

void selectmenu() {
  print("");
  print("sélectionner une veleur entre 0 et 4 :");
}
