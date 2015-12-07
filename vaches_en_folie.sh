#!/bin/bash

#------------------------------------------------------
# Projet L1 - Introduction aux Systèmes d'Exploitations
#------------------------------------------------------

# Remplacer les noms par les vôtres
auteurs="A.Cambon et P.Fontaine"

# Les fichiers générés par le script
fichier_rst="vaches_en_folie.rst"
fichier_html="vaches_en_folie.html"
fichier_pdf="vaches_en_folie.pdf"

echo "Génération de ${fichier_rst}"

# Insertion d'un bloc de texte dans fichier_rst.
# Le texte concerné est compris entre les deux mots BLOC.
cat > ${fichier_rst}  << BLOC
===============
Vaches en folie
===============
----------------------------------------------------
Projet d\'Introduction aux Systèmes d\'Exploitations
----------------------------------------------------

:Auteurs: *${auteurs}*
:Généré par: *$(whoami)*

Ce document a été généré  à partir du fichier \`\`vaches_en_folie.rst\`\` au
format \`reStructuredText\`_ lui-même créé par le script
\`\`vaches_en_folie.sh\`\`. Ce fichier  rst a  ensuite  été  converti en
HTML  et  PDF avec  les commandes \`\`rst2html\`\` et \`\`rst2pdf\`\`.

.. _reStructuredText: https://aful.org/wikis/interop/ReStructuredText

.. sidebar:: Références

   Les directives du format RST sont disponibles \`ici\`_.

.. _ici: http://docutils.sourceforge.net/docs/ref/rst/directives.html

L\'objectif est de compléter le script \`\`vaches_en_folie.sh\`\` afin que les
documents générés ressemblent le plus fidèlement possible au modèle fourni.

Une vache : Définition
======================

**Vache** est le nom vernaculaire donné à la femelle du **taureau** et à la mère du **veau** des bovins. C\'est un
ruminant appartenant à la famille des bovidés, généralement porteur de cornes sur le front. Une **génisse**
ou **vachette** est une vache qui n\'a pas vêlé. La vache *beugle*, *meugle* ou *mugit* tout en produisant du lait
et des bouses. Vache se dit *cow* in English.

.. figure:: http://i.imgur.com/yIBMMzL.jpg
   :scale: 200 %
   :alt: map to buried treasure

   **Figure :** Trois normandes devisent du sens de la vie sous les poiriers en fleurs.


Quelques races bovines
----------------------

+------------------------------------------------+--------------------------------------------+
| **Races et liens vers site web**               | **Images**                                 |
+================================================+============================================+
| La Lourdaise_                                  | .. image:: http://i.imgur.com/rsgjo74.jpg  |
|				                 | 	:scale: 105%                          |
+------------------------------------------------+--------------------------------------------+
| La Normande_                                   | .. image:: http://i.imgur.com/2y9VGy8.jpg  |
|				                 | 	:scale: 105%                          |
+------------------------------------------------+--------------------------------------------+

.. _Lourdaise: http://bit.ly/Race_Lourdaise
.. _Normande: http://bit.ly/Race_Normande   

Vaches et systèmes d\'exploitation
==================================

Sous **GNU/Linux**, les vaches peuvent s\'exprimer avec les commandes \`\`cowthink\`\` et \`\`cowsay\`\`.

Transformation bovine
=====================
**Les vaches sont coquettes !**


.. sidebar:: Indications

   	les quatres vignette sutilisent la vache par défaut de la commande \`\`cowsay\`\`. Les différences
	sont obtenues en filtrant le flux de sortie pour remplacer des caractères par d\'autres. Votre
	mission consiste à élaborer une succession de filtres qui reproduise les vignettes au caractère
	près.
                                   



::

BLOC
cowsay "Je suis une vache originale" | awk '{printf " %-35s\n", $0}'  > vache0.txt
cowsay "On m'a filtrée " | tr "_" "~" |tr "o" "x" | tr "^" "o" | tr "x" "^" | tr "|" "1" | tr "(" "{" | tr ")" "}" | tr "-" "~"> vache1.txt
paste -d':' vache0.txt vache1.txt >> ${fichier_rst}

echo "........................................................................" | awk '{printf " %-35s\n", $0}' >> ${fichier_rst}

cowsay "A moi les nouvelles mamelles !" | awk '{printf " %-35s\n", $0}'|tr "-" "~" | tr "_" "~"| tr "(" "{" | tr ")" "}" | tr "|" "1" | tr "w" "u" | tr "^" "n" | sed s/oo/**/ | sed -e 's/~~~~u/~~~uu/'  > vache2.txt
cowthink "Une queue de lapin ?! " | tr "_" "~" |tr "~" "-"| tr "^" "n" | sed s/oo/oO/ | cut -c '-26' | sed -e 's/\\/@/2' | tr '|' '1' | tr '(' '{' | tr ')' '}' | tr "-" "~" > vache3.txt
paste -d':' vache2.txt vache3.txt >> ${fichier_rst}
rm -f vache*.txt

#---
cat >> ${fichier_rst}  << BLOC

.. note::
	**Attention !**

	Veuillez noter que chaque ligne de chaque vignette doit commencer par un espace.

Ambition batracienne
====================

C\'est l\'histoire du crapaud qui rêvait de devenir aussi gros qu\'un **boeuf**...

.. sidebar:: Indications

   	L\'option \`\`-f\`\` permet de choisir le personnage qui parle ou pense. Tous les fichiers sont
	disponibles dans le dossier \`\`/usr/share/cowsay/cows/\`\`.


::

BLOC
	
	cowsay "Je suis le plus gros des crapauds !" > vache3.txt
	cat vache3.txt | tr "w" "/" | cowthink -f bud-frogs -n | awk '{printf " %-35s\n", $0}' >> ${fichier_rst}


	
	#---

cat >> ${fichier_rst}  << BLOC

**Notez** que le message est lui-même ce que dit la vache \!

Tableau de famille
==================

Voici quelques membres de la famille insérés dans un tableau RST.   


.. list-table::
   :widths: 20 20
   :header-rows: 0

 
   * - .. include:: cowvache.txt
     - 2.99
   * - Crunchy Frog
     - 1.49


Mascotte personnelle
====================

Voici la mascotte que nous avons dessinée en ascii art et sauvegardée dans le fichier mascotte.cow
en prenant exemple sur les fichiers disponibles dans le dossier /usr/share/cowsay/cows/

::

BLOC
cowsay -f ./mascotte.cow "Je suis la mascotte de ${auteurs}" | awk '{printf " %-40s\n", $0}' >> ${fichier_rst}


# Génération des formats HTML et PDF

echo "Génération de ${fichier_html}"
rst2html.py -d -t -s ${fichier_rst} ${fichier_html}

echo "Génération de ${fichier_pdf}"
rst2pdf           ${fichier_rst} ${fichier_pdf}
