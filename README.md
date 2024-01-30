# Explications : 
## Simple_tf 
- dossier vu en cours, application simple.
- Plusieurs élements PaaS : 
    - Un storage account Azure pour l'hébergement du front. Un storage account est utile pour le stockage de fichier, des bases de données noSQL simple, du messaging simple.
    - Un app service plan qui représente le serveur qui hébergera la futur API des dev
    - Une web app qui représente l'instance de l'applicatif.
    - Un serveur de base de donnée SQL serveur.
    - Une base de données
- Workflow Github action permettant de déployer ça via la chaine CI/CD
- Pas de gestion de réseau ici. Tout est exposé publiquement avec uniquement une protection identité sur la base de données
- Pas de gestion d'environnement.

## Complexe_tf
- Dossier plus proche d'une 'prod' ready
- Gestion des environnements ( dev, test, prod )
- Utilisation des modules Terraform. ( s'apparente à une fonction réutilisable )
- Utilisation des variables.
- Le workflow GitHub Action est volontairement simple. Il n'est pas 'prod' ready
- L'infrastructure est la même que dans le dossier Simple_tf
- Je vous laisse creuser si le sujet vous interesse.

## Test_files
- Permet de tester les déploiements d'une API ou du front

## Utilisations
INFO : l'app registration doit être OWNER de votre abonnement pour éviter les problèmes de droits !
INFO : Si une erreur arrive, le fichier d'état n'est pas conserver. Si certaine ressource sont présentes sur Azure, vous devez les supprimer avant de relancer le workflow complet. Dans un vrai process, le fichier d'état est conservé dans un storage account par exemple. 
### Simple_tf 
- Créer un repository Github vide ( ou avec un simple fichier si besoin )
- Pull le projet et créer immédiatement une branche 'develop'
- Ajout de tout les fichiers sur le repository dans la branche develop
- Faire une pull request de 'develop' vers 'main'
- Le terraform plan s'execute, vérifier les informations. Si erreur, corrigé et repousser les modifications dans develop
- Quand le plan est ok, valider la pull request
- Le terraform apply s'execute. Vérifier que les ressources sont bien présentes sur Azure

### Complexe_tf
- Une fois que tout les dossiers sont sur main, vous pouvez lancer le workflow du dossier complexe.
- Aller sur GitHub dans l'onglet 'Action'
- Choisir le Workflow complexe et executez le avec le nom de l'environnement ( dev, test ou prod ) et l'étape ( plan ou apply )
- L'environnement choisie devrais se déployer sur Azure

### Test_file
- Les droits sont logiquements setup avec le code terraform
- Lancer les workflows correspondant à ce qu'on veux déployer.