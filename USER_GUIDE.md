# John the Ripper

## Retrouver le mot de passe d'un fichier ZIP protégé

### Étapes 1 à 4 : Uniquement pour le test
1) Ouvrir un terminal de commande
> Ctrl+Alt+T
2) Créer un fichier.txt
> touch test.txt
3) Remplir le fichier.txt (cmd "ls" pour le test)
> ls > test.txt
4) Mettre le fichier dans un dossier .zip protegé par un mot de passe
> zip -e protection.zip test.txt
(créer le mot de passe quand demandé)

### Étapes 5-6 : Remplacer "protection.zip" par le fichier protégé si déjà existant
5) Extraire le mot passe hasher du dossier zip dans un fichier.txt
> zip2john protection.zip > hash.txt
6) Utiliser John pour decripter le mot de passe hasher
> john hash.txt

<p align="center">
<img align="center" src="https://github.com/WildCodeSchool/tssr-2405-p1-g1-Jhon/blob/main/images/JohnZIP.png">
</p>
