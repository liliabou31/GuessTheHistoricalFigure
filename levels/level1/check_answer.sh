#!/bin/bash

echo "=== VÉRIFICATION DE RÉPONSE ==="
echo ""

# Vérifier si le répertoire 'reponse' existe et n'est pas vide
if [ -d "reponse" ]; then
    if [ "$(ls -A reponse 2>/dev/null)" ]; then
        echo "Répertoire 'reponse' trouvé et contient des fichiers."
        echo ""
        
        # Demander à l'utilisateur de saisir sa réponse
        read -p "Entrez le nom du personnage historique : " reponse_utilisateur
        
        # Nettoyer la réponse (enlever les espaces, mettre en minuscule)
        reponse_nettoyee=$(echo "$reponse_utilisateur" | tr '[:upper:]' '[:lower:]' | xargs)
        
        echo ""
        
        # Vérifier la réponse
        case "$reponse_nettoyee" in
            "martin luther king"|"martin luther king jr"|"martin luther king jr."|"king"|"mlk")
                echo "BRAVO ! Vous avez trouvé !"
                echo "La personnalité historique est : Martin Luther King Jr."
                echo ""
                echo "Saviez-vous que :"
                echo "Son discours 'I Have a Dream' en 1963 est devenu"
                echo "un symbole mondial de la lutte pour les droits civiques"
                echo ""
                echo "Félicitations pour avoir résolu ce niveau !"
                ;;
            "roosevelt"|"franklin roosevelt"|"franklin d. roosevelt"|"fdr")
                echo "Presque ! C'est un grand homme d'État américain,"
                echo "mais ce n'est pas la bonne réponse pour cette citation."
                echo "Rappel de l'indice : cherchez les 'rêves'"
                ;;
            "einstein"|"albert einstein")
                echo "Non, Einstein était un physicien génial,"
                echo "mais ce n'est pas lui qui a prononcé cette citation."
                ;;
            "armstrong"|"neil armstrong")
                echo "Armstrong était un astronaute célèbre,"
                echo "mais sa citation parlait de pas sur la Lune, pas de rêves."
                ;;
            "descartes")
                echo "Descartes était un grand philosophe,"
                echo "mais sa célèbre citation est 'Je pense, donc je suis'."
                ;;
            *)
                echo "Ce n'est pas la bonne réponse..."
                echo ""
                echo "Conseils :"
                echo "  - Relis bien la citation dans citations.txt"
                echo "  - L'indice était : 'Cherche la citation qui évoque les rêves'"
                echo "  - Vérifie l'orthographe du nom"
                echo ""
                echo "Tu peux réessayer en relançant le script !"
                ;;
        esac
    else
        echo "Le répertoire 'reponse' existe mais est vide."
        echo "Astuce : Sauvegarde ta réponse dans le répertoire avec une commande comme :"
        echo "  grep 'rêve' citations.txt > reponse/ma_reponse"
        echo ""
    fi
else
    echo "Le répertoire 'reponse' n'existe pas."
    echo "Astuce : Crée-le d'abord avec la commande :"
    echo "  mkdir reponse"
    echo ""
fi

echo ""
