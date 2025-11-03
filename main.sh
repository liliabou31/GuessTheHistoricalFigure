#!/bin/bash
# ==========================================
# Jeu d'énigmes historiques
# Script principal : game.sh
# ==========================================

# Rendre le script exécutable : chmod +x game.sh
# Lancer le jeu : ./game.sh

clear
echo "================================================="
echo "     Jeu d'énigmes  de personnage historiques"
echo "================================================="
echo

while true; do
    echo "Choisis ton niveau :"
    echo "0) Niveau 0 : Débutant"
    echo "1) Niveau 1 : Intermédiaire"
    echo "2) Niveau 2 : Avancé"
    echo "3) Quitter"
    echo

    read -p ">> Ton choix : " choice

    case $choice in
        0)
            echo
            echo "Lancement du Niveau 0 : Débutant..."
            echo
            exec ./levels/level0/level0.sh
            ;;
        1)
            echo
            echo "Lancement du Niveau 1 : Intermédiaire..."
            echo
            echo
            exec bash levels/level1/level1.sh
            ;;
        2)
            echo
            echo "Lancement du Niveau 2 : Avancé..."
            echo
            bash ./levels/level2/level2.sh
           ;;
        3)
            echo "Merci d'avoir joué ! À bientôt."
            exit 0
            ;;
        *)
            echo "Choix invalide. Essaie encore."

           ;;
   esac
   read
done
