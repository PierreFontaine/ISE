===============
Vaches en folie
===============
----------------------------------------------------
Projet d\'Introduction aux Systèmes d\'Exploitations
----------------------------------------------------

:Auteurs: *A.Cambon et P.Fontaine*
:Généré par: *pierrefontaine*

Ce document a été généré  à partir du fichier ``vaches_en_folie.rst`` au
format `reStructuredText`_ lui-même créé par le script
``vaches_en_folie.sh``. Ce fichier  rst a  ensuite  été  converti en
HTML  et  PDF avec  les commandes ``rst2html`` et ``rst2pdf``.

.. _reStructuredText: https://aful.org/wikis/interop/ReStructuredText

.. sidebar:: Références

   Les directives du format RST sont disponibles `ici`_.

.. _ici: http://docutils.sourceforge.net/docs/ref/rst/directives.html

L\'objectif est de compléter le script ``vaches_en_folie.sh`` afin que les
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

Sous **GNU/Linux**, les vaches peuvent s\'exprimer avec les commandes ``cowthink`` et ``cowsay``.

Transformation bovine
=====================
**Les vaches sont coquettes !**


.. sidebar:: Indications

   	les quatres vignette sutilisent la vache par défaut de la commande ``cowsay``. Les différences
	sont obtenues en filtrant le flux de sortie pour remplacer des caractères par d\'autres. Votre
	mission consiste à élaborer une succession de filtres qui reproduise les vignettes au caractère
	près.
                                   



::

  _____________________________     : ~~~~~~~~~~~~~~~~~~ 
 < Je suis une vache originale >    :< On m'a filtrée  >
  -----------------------------     : ~~~~~~~~~~~~~~~~~~ 
         \   ^__^                   :        \   o~~o
          \  (oo)\_______           :         \  {^^}\~~~~~~~
             (__)\       )\/\       :            {~~}\       }\/\
                 ||----w |          :                11~~~~w 1
                 ||     ||          :                11     11
 ........................................................................
  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  : ~~~~~~~~~~~~~~~~~~~~~~~~ 
 < A moi les nouvelles mamelles ! > :{ Une queue de lapin ?!  }
  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  : ~~~~~~~~~~~~~~~~~~~~~~~~ 
         \   n~~n                   :        o   n~~n
          \  {**}\~~~~~~~           :         o  {oO}\~~~~~~~
             {~~}\       }\/\       :            {~~}\       }@
                 11~~~uu 1          :                11~~~~w 1
                 11     11          :                11     11

.. note::
	**Attention !**

	Veuillez noter que chaque ligne de chaque vignette doit commencer par un espace.

Ambition batracienne
====================

C\'est l\'histoire du crapaud qui rêvait de devenir aussi gros qu\'un **boeuf**...

.. sidebar:: Indications

   	L\'option ``-f`` permet de choisir le personnage qui parle ou pense. Tous les fichiers sont
	disponibles dans le dossier ``/usr/share/cowsay/cows/``.


::

  _________________________________________ 
 (  _____________________________________  )
 ( < Je suis le plus gros des crapauds ! > )
 (  -------------------------------------  )
 (         \   ^__^                        )
 (          \  (oo)\_______                )
 (             (__)\       )\/\            )
 (                 ||----/ |               )
 (                 ||     ||               )
  ----------------------------------------- 
      o                             
       o                            
           oO)-.                       .-(Oo
          /__  _\                     /_  __\
          \  \(  |     ()~()         |  )/  /
           \__|\ |    (-___-)        | /|__/
           '  '--'    ==`-'==        '--'  '

**Notez** que le message est lui-même ce que dit la vache \!

Tableau de famille
==================
Voici quelques membres de la famille insérés dans un tableau RST.

+-------------------------------------------+-----------------------------------------+
|                                           |::                                       |
|                                           |                                         |
|                                           |BLOC                                     |
|cowsay "hello "                            |cowsay " "                               |
|                                           |                                         |
| cat >> vaches_en_folie.rst  << BLOC       | cat >> vaches_en_folie.rst  << BLOC     |
|La Maman                                   |La Tatie Web                             |
+-------------------------------------------+-----------------------------------------+
|                                           |                                         |
|                                           |                                         |
|                                           |                                         |
|                                           |                                         |
|                                           |                                         |
|                                           |                                         |
+-------------------------------------------+-----------------------------------------+


Mascotte personnelle
====================

Voici la mascotte que nous avons dessinée en ascii art et sauvegardée dans le fichier mascotte.cow
en prenant exemple sur les fichiers disponibles dans le dossier /usr/share/cowsay/cows/

::

  ____________________________________   
 / Je suis la mascotte de A.Cambon et \  
 \ P.Fontaine                         /  
  ------------------------------------   
