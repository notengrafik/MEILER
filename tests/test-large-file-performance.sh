set -e

maxmeasures=$1
measures=1

dir=$(dirname "$0")

while [ $measures -le $maxmeasures ]
do
  echo $measures measures
  ALL_TIME=$(
  saxonb-xslt "$dir"/create-measures.xsl "$dir"/create-measures.xsl measures=$measures \
  | time -f "%U + %S" saxonb-xslt -xsl:"$dir"/../mei2ly.xsl -s:- 2>&1 > /dev/null  )
  RUNTIME=0
  for i in "$ALL_TIME"; do RUNTIME=`echo "$RUNTIME + $i"|bc`; done
  echo $RUNTIME
  ((measures=measures * 2))
done