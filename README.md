# Dialogue acts recognizer for computer-mediated communication

Last version: 20170519


## DESCRIPTION

The labels are based on the [DIT++ taxonomy of Dialogue Acts](http://dit.uvt.nl). 
DIT++ proposes to annotate dialogue acts in terms of communicative functions related to some semantic content also named the dimension.

The recognizer system uses the [LibShortText](https://www.csie.ntu.edu.tw/~cjlin/libshorttext) tool for short-text classification and analysis which is built upon liblinear library.

For the present work, two distinct and independent models were built: One for communicative function, the other for dimension.

Models were trained using 3,000 utterances comming from three distinct modalities (IRC, mail and forum) of the ubuntu-fr corpus (1000 of each modality).

Dedicated for processing French written conversations, messages or utterances.


## LICENSE

Models are licensed under the [Apache v2 license](http://www.apache.org/licenses/LICENSE-2.0). 

Please refer to the LibShortText directory to get information about the LibShortText licence.


## HOW TO USE THE MODELS

Given a file with a tokenized text with whitespace character as separator and one utterance per line.

To recognize the dialogue act dimension

    bash ./applications/recognize-da-dim.sh data/sample

To recognize the dialogue act function

    bash ./applications/recognize-da-fct.sh data/sample

Substitute `data/sample` with your own file.

Both scripts output the predicted label and the utterance separated by a tabulation.

These scripts are only for a demo use.


## HOW TO CITE THE WORK

> Nicolas Hernandez, Soufian Salim, Elizaveta Loginova Clouet, "Ubuntu-fr : A Large and Open Corpus for Multi-modal Analysis of Online Written Conversations", Proceedings of the Tenth International Conference on Language Resources and Evaluation (LREC), Portorož, Slovenia, May 23-28, 2016

> Soufian Salim, Nicolas Hernandez, Emmanuel Morin, "Comparaison d’approches de classification automatique des actes de dialogue dans un corpus de conversations écrites en ligne sur différentes modalités", 23ème Conférence sur le Traitement Automatique des Langues Naturelles (TALN), Paris, 4-8 Juillet 2016


## CREDITS

The present work was supported by the Unique Interministerial Fund (FUI) 17. It was part of the [ODISAE project](www.odisae.com).


## CONTACT

  Nicolas Hernandez (firstname.name@univ-nantes.fr)