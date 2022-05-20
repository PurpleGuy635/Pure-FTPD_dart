<h1>Pure-FTPD Dart application</h1>

<h2>Sommaire</h2>
<h5>but</h5>
<h5>cahier des charge</h5>
<h5>features présente dans le programme</h5>
<h5>attention</h5>
<h5>amélioration possible</h5>

<h2>But du programme</h2>

<p> le but de se programme est de simplifier l'instaltion du service pure-ftpd.</p>

<h2>cachier des charge</h2>

<p>l'instalation de Pure-ftpd peut demander la mise a jour des dépôt et des pacquet. le programme doit contennir l'option pour mettre a jour les pacquet et les dépôt.

ensuite il faut une option pour installer le service Pure-ftpd.

pour pouvoir utiliser le service, il faut un compte la derniére option sera de créer un utilisateur.</p>

<h5>features présente dans le programme</h5>

![Capture](https://user-images.githubusercontent.com/100714589/169569976-db89b133-b8aa-47fa-8b40-bb80fb1bfc3c.PNG)

<p>l'option pour mettre a jour les dépôt et les paquet a été implémenter.
  
  l'option pour installer le service pure-ftpd a été implémenter.
  
  l'ajout d'utilisateur a été partiellement implémenter.</p>
  
  <h5>attention</h5>
  
  le programme est en développement il ce peut que la version du programme posséde encore des bugs, (il est recommandé de ne pas éxécuter le programme sur une machine  au contennu sensible).
  
  l'ajout d'utilisateur est fonctionnel mais le changement de mot de passe ne sera pas effectuer
pour changer le mot de passe utiliser la commande suivante avec les droit root

||sudo passwd (le nom de l'utilisateur) ||

le programme nécésitera un accée au droit root

le programme créer des utilisateur linux et non virtuel (sécuriser les accées au serveur (ssh etc ...)

<h5>amélioration possible</h5>

<p>les utilisateur créer sont des utilisateur PAM linux. pour plus de liberté pour réglementer l'accée au service il faudrait créer des utilisateur virtuel.
</p>
