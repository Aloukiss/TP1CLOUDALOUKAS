\# TP Cloud 1 — OpenTofu \& MinIO



\## Objectif

Mettre en pratique l’Infrastructure as Code (IaC) avec OpenTofu et manipuler un stockage objet compatible S3 via MinIO.



\## Prérequis

\- OpenTofu installé (`tofu version`)

\- MinIO installé (`minio --version`)



\## Lancer MinIO

Créer le dossier de données :

```powershell

mkdir C:\\minio-data





Démarrer MinIO :minio server C:\\minio-data --console-address ":9001"



