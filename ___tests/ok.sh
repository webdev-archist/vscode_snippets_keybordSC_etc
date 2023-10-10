#!/bin/bash

# Demander le nom de la recherche
echo "Entrez le nom de la recherche :"
read recherche

# Utiliser la commande find pour rechercher les fichiers
fichiers=$(find . -iname "$recherche")

# Afficher les résultats de la recherche
if [ -z "$fichiers" ]; then
  echo "Aucun fichier n'a été trouvé."
else
  echo "Les fichiers suivants ont été trouvés :"
  for fichier in $fichiers; do
    echo "$fichier"
  done
fi

