#!/bin/bash
clear
echo "====================================="
echo "        Niveau 0 : Débutant"
echo "====================================="
echo
echo "Bienvenue au musée du temps !"
echo "Ton objectif : découvrir le nom du personnage historique mystère."
echo "Utilise les commandes : ls, cd, cat, et rm"
echo

# --- Choisir un personnage aléatoire ---
figures=(figure1 figure2 figure3)
target=${figures[$RANDOM % ${#figures[@]}]}

# --- Créer le musée temporaire ---
mkdir -p levels/level0/museum
cd levels/level0/museum || exit
if [ $target == 'figure1' ]; then
	echo "Einstein" >  personnage_mystere.txt
elif [ $target == 'figure2' ]; then
        echo "Newton" >  personnage_mystere.txt
elif [ $target == 'figure3' ]; then
        echo "Cléopatre" >  personnage_mystere.txt
fi
echo
echo "Tu as à ta disposition 3 indices dont 1 qui est trompeur."
echo "Identifie-le et supprime-le à l'aide de la commande 'rm' et ses options !"
echo
echo "Voici le dossier du personnage qui faut parcourir dans le dossier 'figures':"
echo "$target"
echo
echo "Le musée est prêt. Explore les dossiers à l'aide des commandes bash"
echo "Méfie toi du dossier 'museum' car il contient la réponse! "
echo
echo "Le fichier LV0_instructions.md peut te servir en tant que guide si tu en as besoin !"
echo
echo "Appuie sur Entrée pour COMMENCER et retourner au terminal..."
read

# RETOUR DIRECT AU TERMINAL
echo "Retour au terminal... Bonne chance !"
echo
exit 0
