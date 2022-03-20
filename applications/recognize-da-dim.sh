#!/bin/bash

function usage {
  echo "Error: $1"
  echo "Usage: $0 <input-file>"
  echo "  The input file format should be a tokenized text with whitespace character"
  echo "  as separator and one utterance per line." 
  exit -1
}


if [ $# -ne 1 ]
  then
    usage "wrong parameters."
fi

if [ ! -e applications/libshorttext-1.1/text-predict.py ]
    then
  usage "Wrong root directory." 
fi

if [ ! -e $1 ]
    then
  usage "input-file does not exist or wrong path." 
fi

INPUTFILE=$1

cat $INPUTFILE | perl -ne 'print "\t\t$_"' > /tmp/libshortext-predict-input
python applications/libshorttext-1.1/text-predict.py /tmp/libshortext-predict-input models/ubuntu-fr-all-train-3000-dimension-libshortext-model /tmp/libshortext-dimension-hyp-output
cat /tmp/libshortext-dimension-hyp-output | tail -n +7 | cut -f 1 > /tmp/libshortext-dimension-hyp
paste /tmp/libshortext-dimension-hyp $INPUTFILE 