### TP1 CLOUD



La commande `tofu version` a permis de vérifier l’installation correcte d’OpenTofu sur la machine.

De la même manière, la commande `minio --version` a servi à confirmer la présence et le bon fonctionnement du serveur MinIO.

Le serveur MinIO a ensuite été lancé localement à l’aide de la commande `minio server C:\minio-data --console-address ":9001"`. Cette commande démarre le service de stockage objet et rend accessible la console d’administration web de MinIO via le navigateur.

Au niveau du OpenTofu, plusieurs fichiers de configuration ont été créés:

`main.tf` pour la définition de l’infrastructure
`variables.tf` pour la déclaration des variables
`outputs.tf` pour l’affichage des résultats
les fichiers du site web `index.html` et `style.css`. 
Un fichier `.gitignore` a également été ajouté afin d’exclure les fichiers sensibles et d’état du dépôt Git.

La commande `tofu init` a été utilisée pour initialiser le répertoire de travail OpenTofu, télécharger le provider MinIO et préparer l’environnement d’exécution. 
La commande `tofu plan` a permis de visualiser les ressources à créer avant leur déploiement effectif, offrant une vision claire des changements à appliquer. 
La commande `tofu apply` a ensuite été exécutée afin de créer automatiquement l’infrastructure décrite, à savoir un bucket de stockage objet nommé `webbucket` ainsi que les objets `index.html` et `style.css`.

À l’issue de ce déploiement, le bucket `webbucket` est devenu visible dans la console MinIO et contenait les fichiers du site web statique. Une capture d’écran de cette vérification a été réalisée et ajoutée au dépôt Git dans le dossier `screenshots`.

Afin de vérifier la reproductibilité complète de l’infrastructure:
la commande `tofu destroy` a été utilisée pour supprimer l’ensemble des ressources créées. 
La commande `tofu apply` a ensuite été exécutée une nouvelle fois afin de reconstruire l’infrastructure à l’identique.
