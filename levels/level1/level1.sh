#!/bin/bash

clear
echo "====================================="
echo "        Niveau 1 : Intermédiaire"
echo "====================================="
echo ""
echo "Bienvenue dans l'atelier de l'historien !"
echo "Ton objectif : découvrir le nom du personnage historique mystère."
echo "Utilise les commandes : grep, mkdir, cp, mv, et les éditeurs de texte"
echo ""
echo "Tu as à ta disposition un fichier de citations mélangées."
echo "Trouve la bonne citation et isole le nom du personnage !"
echo ""
echo "L'atelier contient :"
echo "- Un fichier 'citations.txt' avec des citations de différentes personnalités"
echo "- Un indice pour te guider vers la bonne piste"
echo "- La nécessité de créer ton propre dossier d'investigation"
echo ""
echo " Indice initial : Cherche la citation qui évoque les 'rêves'"
echo ""
echo "Quand tu penses avoir trouvé le personnage, exécute : ./check_answer.sh"
echo ""
cat >levels/level1/citations.txt << EOF
1. "Je pense, donc je suis." - Philosophe, 1650
2. "E = mc^2" - Physicien, 1905
3. "La seule chose que nous ayons à craindre est la crainte elle-même." - Homme d'État, 1933
4. "Je suis devenu la mort, le destructeur des mondes." - Physicien, 1945
5. "Un petit pas pour l'homme, un bond de géant pour l'humanité." - Astronaute, 1969
EOF
# La personne que vous cherchez est cachée dans l'une de ces lignes.
echo "L'atelier est prêt. Commence par examiner 'citations.txt' !"
echo
echo 
echo "Appuie sur Entrée pour COMMENCER et retourner au terminal..."
read

# RETOUR DIRECT AU TERMINAL
echo "Retour au terminal... Bonne chance !"
echo
exit 0
