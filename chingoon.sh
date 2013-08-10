#!/bin/sh
CHINLIMIT=10
if [[ ! -n "$1"  ]]
then
    echo " ERROR: chingoon needs chins"
    exit 1
fi
if  [[ $1 -lt 0 ]]
then
    echo " ERROR: chingoon can't have a negachin"
    exit 1
fi
if [[ $1 -gt $CHINLIMIT ]]
then
    echo " ERROR: more chins than a chinese phone book and also more than \
    you'd really want to spam an IRC channel with you faggot (change \$CHINLIMIT)"
    exit 1
fi

echo " __________"
echo "(--[ .]-[ .]"
if [ ! $1 -eq 0 ]
then
    echo "(       O  )"
    for i in `jot $1`
    do
        echo "(          )"
    done
    echo "(__________)"
else
    echo "(_______O__)"
fi
