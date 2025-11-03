
#!/bin/bash
# ==============================
# Réinitialise le niveau 0
# ==============================

echo "Je suis né(e) en Ulm, en Allemagne." > figures/figure1/clue1.txt
echo "J'ai publié une théorie sur la relativité du temps et de l'espace." > figures/figure1/clue2.txt
echo "J'ai découvert l'induction électromagnétique en 1831."> figures/figure1/clue3.txt

echo "J'ai vu tomber une pomme et j'ai inventé ensuite la gravité." > figures/figure2/clue1.txt
echo "Je suis né en Angleterre en 1642." > figures/figure2/clue2.txt
echo "J'ai participé à l'invention de la calculatrice." > figures/figure2/clue3.txt

echo "J'ai entretenu des relations politiques et amoureuses avec Jules César." > figures/figure3/clue1.txt
echo "J'ai inventé la glace à la menthe pour me rafraichir dans la chaleur du désert." > figures/figure3/clue2.txt
echo "J'était la reine de l'Egypte." > figures/figure3/clue3.txt

rm -rf museum
echo "Musée temporaire supprimé. Nouveau personnage sera choisi à la prochaine partie."
