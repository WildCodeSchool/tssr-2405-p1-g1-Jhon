# Installation de John The Ripper

## Besoins initiaux

- Retrouver le mot de passe d'un fichier zip crypté
- Effectuer une attaque par dictionnaire pour tester la robustesse des mots de passe d’un serveur à partir d’un client
 
## Configuration technique

- Client : Windows 10 avec Putty installé [https://www.putty.org/]
- Serveur : Linux Kali 6.6.15 avec openssh-server installé et activé
 
## Étapes d'installation

1) Se connecter depuis le client sur le serveur avec Putty
   
	- Démarrer Putty, entrer l'adresse IP du serveur et cliquer sur "Ouvrir"
	- Entrer l'identifiant et le mot de passe du serveur

	Vous pouvez passer cette étape si vous travaillez directement sur le serveur.


3) Mettre à jour les paquets depuis le terminal
> **sudo apt update**


3) Installer John the Ripper
> **sudo apt install john**


4) Vérifier si Joth the Ripper est correctement installé
> **john**


*L'installation de John The Ripper est maintenant terminée*

Se référer à USER_GUIDE.md pour l'utilisation


## Difficultés et solutions
- Certains paquets nécessaires au bon fonctionnement de John The Ripper ne sont pas présents nativement sur certaines distributions Linux, vous devrez peut-être en installer manuellement (suivre les éventuelles messages d'erreur lors de l'exécution)
