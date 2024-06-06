# **Presentation de John the Ripper**

## Qu’est-ce que [John the Ripper](https://www.openwall.com/john/) ?

John the Ripper (JDR) est un logiciel [open source](https://www.redhat.com/fr/topics/open-source/what-is-open-source#:~:text=Un%20logiciel%20Open%20Source%20est,l'examen%20par%20les%20pairs.) d’hacking de mot de passe. 

Il inclut : 
- l'autodétection des [fonctions de hachage](https://fr.wikipedia.org/wiki/Fonction_de_hachage "Fonction de hachage") utilisées pour stocker les mots de passe
- l'implémentation d'un grand nombre d’algorithmes de cassage
- la reprise d'une attaque après une pause (arrêt de la machine)
- un vaste choix d'options personnalisables

Il est capable d’attaquer les mots de passe hachés avec différentes fonctions de hachage algorithmés tel que : 

| Exemples |
| ---------------- |
| [*MD5*](https://fr.wikipedia.org/wiki/MD5 "MD5") |
| [*Blowfish*](https://fr.wikipedia.org/wiki/Blowfish "Blowfish") | 
| [*Kerberos*](https://fr.wikipedia.org/wiki/Kerberos_\(protocole\) "Kerberos (protocole)") | 
| [AFS](https://fr.wikipedia.org/wiki/Andrew_File_System "Andrew File System") |  
| [*LM hashes*](https://fr.wikipedia.org/wiki/LM_hash "LM hash") de Windows NT/2000/XP/2003 |



Il n’est pas nécessaire d’être physiquement devant la machine ayant les fichiers à hacker, il suffit que la machine ou John the Ripper est installé, dispose de la bibliothèque nécessaire au fonctionnement de ce logiciel et bien entendu un accès à distance à la machine où sont les fichiers hashés.

## Comment fonctionne John the Ripper

John The Ripper importe un fichier contenant les informations d’identifications chiffrées.
Son action consiste à déchiffrer le mot de passe, notamment grâce à une [attaque simple](https://fr.wikipedia.org/wiki/John_the_Ripper#:~:text=John%20dispose%20de%20quatre%20modes,directement%20dans%20un%20des%20modes.), par une [attaque par force brute](https://fr.wikipedia.org/wiki/John_the_Ripper#:~:text=John%20dispose%20de%20quatre%20modes,directement%20dans%20un%20des%20modes.) ou par [attaque incremental](https://fr.wikipedia.org/wiki/John_the_Ripper#:~:text=John%20dispose%20de%20quatre%20modes,directement%20dans%20un%20des%20modes.).

***cf*** : voir le paragraphe "Modes d'action" de la page [Wikipedia](https://fr.wikipedia.org/wiki/John_the_Ripper#:~:text=John%20dispose%20de%20quatre%20modes,directement%20dans%20un%20des%20modes.).

- Pour le *mode simple*, JDR modifie le nom d'utilisateur  en ajoutant un ou plusieurs caractere a la suite du nom d'utilisateur
  
- Pour le *mode d'attaque par force brute*, il consulte à partir d’un dictionnaire de mots, il essaie tous les mots contenus dans celui-ci pour trouver le mot de passe utilisé. Il est possible que le mot de passe ne soit pas dans le dictionnaire utilisé, la nécessité d’ajouter un ou plusieurs dictionnaires sera nécessaire car John the Ripper peut travailler avec de multiples dictionnaires.
  
- Pour le *mode incremental*, il va essayer toutes le combinaisons de caractères possible ,il a le desaventage d'etre extremement long, suivant la complexité du mot de passe, voir infini si la complexité est trop importante. Afin d’être moins chronophage dans le mode incrémental, il recherche dans un premier temps les caractères les plus utilisés statistiquement.

## L'équipe

- *Julie* était opératrice pour le sprint 1 et Scrum Master pour le sprint 2
- *Jerome* était Product Owner pour le sprint 1 et opérateur pour le sprint 2
- *Mehdi* était opérateur pour le sprint 1 et Product Owner pour le sprint 2
- *Philippe* était Scrum Master pour le sprint 1 et Product Owner pour le sprint 2

## Difficultées rencontrées

Lors de l'installation du logiciel **John the Ripper** sur differents systèmes d'operations( OS ) ,tels que Ubuntu ; Debian  ou Kali, des difficultés sur certains OS nous ont obligés a choisir Kali pour simplifier l'utilisation du logiciel ***John the Ripper** .
En effet l'OS Kali integre les fonctionnalités de ***John the Ripper*** à la difference de Ubunutu et Debian, ces fonctionnalités peuvent etre ajouter par l'installlation de differents paquets. 
Nous avons buté sur l'utilisation de ***John the Ripper*** avec Kali pour la simple raison que nous n'etions pas dans le groupe **sudoers** .

## Tests réalisés

Dans un premier temps nous avons réalisé des tests avec des mots de passe tres simple ,puis de plus en plus fort .
**John the Ripper** est assez rapide avec des mots de passe s'approchant du nom d'utilisateur. En moins de 3 minutes les mots de passe  sont trouvés avec la mehode **simple** .
En utilisant l'attaque par force brute ,il est legèrement moins rapide si le mot de passe ne contient pas plus de 6 caractères ,au partir de 7 caractères c'est beaucoup plus long 
