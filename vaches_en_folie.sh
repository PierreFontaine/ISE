#!/bin/bash

#------------------------------------------------------
# Projet L1 - Introduction aux Systèmes d'Exploitations
#------------------------------------------------------

# Remplacer les noms par les vôtres
auteurs="P. Fontaine et C. Cambon"

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

**Vache** est ... Vache se dit *cow* in English.

Quelques races bovines
----------------------
+----------------------------------+-------------------------------------+
| **Races et liens vers site web** | **Images**                          |
+==================================+=====================================+
| Lien vers la Lourdaise           | Insérer l\'image ici                |
+----------------------------------+-------------------------------------+

Transformation bovine
=====================
**Les vaches sont coquettes !**

::

BLOC
cowsay "Je suis dans le brouillard" | awk '{printf " %-35s\n", $0}' | tr ' ' '.'  > vache0.txt
cowsay "On ne m'a pas encore filtrée !"  > vache1.txt
paste -d'.' vache0.txt vache1.txt >> ${fichier_rst}
rm -f vache*.txt



#---
cat >> ${fichier_rst}  << BLOC

Mascotte personnelle
====================

::

BLOC
cowsay -f ./mascottej.cow "Je suis la mascotte de ${auteurs}" | awk '{printf " %-40s\n", $0}' >> ${fichier_rst}


# Génération des formats HTML et PDF

echo "Génération de ${fichier_html} avec python"
rst2html.py -d -t -s ${fichier_rst} ${fichier_html}
if [[ $? != 0 ]]; then
	rst2html -d -t -s ${fichier_rst} ${fichier_html}
fi

echo "Génération de ${fichier_pdf} avec python"
rst2pdf.py ${fichier_rst} ${fichier_pdf}
if [[ $? != 0 ]]; then
	echo "Génération de ${fichier_pdf}"
	rst2pdf ${fichier_rst} ${fichier_pdf}
	if [[ $? != 0 ]]; then
		echo "on dirait bien qu'il y ait un bug !"
	fi
fi





