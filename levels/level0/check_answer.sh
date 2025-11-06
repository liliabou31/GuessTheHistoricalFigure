#!/bin/bash
echo "=========================="
echo " VERIFICATION DE REPONSE"
echo "=========================="
# Fonction check_answer : demande la réponse et vérifie tout
check_answer() {
	local target="$1"  # Le personnage à trouver

	while true; do
        	# Demander la réponse au joueur
        	read -p "Quel est le personnage mystère ? (ou tape 'hint' pour un indice) : " answer

        	# Normaliser la casse (mettre tout en minuscules)
        	local answer_lower
        	local target_lower
        	answer_lower=$(echo "$answer" | tr '[:upper:]' '[:lower:]')
        	target_lower=$(echo "$target" | tr '[:upper:]' '[:lower:]')

        	echo  # saut de ligne pour lisibilité
        	if [[ "$target" == "Einstein" ]] && [ -f "figures/figure1/clue3.txt" ]; then
            		echo "Attention : tu dois d'abord supprimer le faux indice avec 'rm ...'"
            		continue
        
		elif [[ "$target" == "Newton" ]] && [ -f "figures/figure2/clue3.txt" ]; then
			echo "Attention : tu dois d'abord supprimer le faux indice avec 'rm ...'"
			continue

		elif [[ "$target" == "Cléopatre" ]] && [ -f "figures/figure3/clue2.txt" ]; then
			echo "Attention : tu dois d'abord supprimer le faux indice avec 'rm ...'"
			continue
		fi

        	# Vérifier la réponse
        	if [[ "$answer_lower" == "$target_lower" ]]; then
            		echo "Bravo ! C'était bien $target."
            		break  # sortir de la boucle
        	elif [[ "$answer_lower" == "hint" ]]; then
            		echo "Conseil : explore les dossiers avec 'ls' et 'cd', lis les fichiers avec 'cat'."
            		echo "Certains indices sont trompeurs — supprime-les avec 'rm '."
        	else
            		echo "Pas encore... continue à explorer le musée ou tape 'hint' pour un indice."
			echo "OU saisie correctement le nom du personnage !"
        	fi
        	echo  # saut de ligne pour aérer
      done
}

target=$(cat museum/personnage_mystere.txt)
check_answer "$target"
