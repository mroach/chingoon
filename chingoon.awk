#!/usr/bin/awk -f

BEGIN{
    OFS="\n";
    numChins=int(ARGV[1]);
    # There's no real way to check if the user inputs a string, weo we're just
    # going to cast it as an int.  Awk just changes a string to zero.
    if(numChins < 0){
        print("fail");
        exit
    }
    scalp=" __________";
    eyes="(--[ .]-[ .]";
    mouth="(       O  )";
    chinFold="(          )";
    chinBot="(__________)";
    thinChin="(_______O__)"
    print(scalp,eyes);
    if(numChins == 0){
        print(thinChin);
        exit;
    }
    else{
        print(mouth);
    for(i=1; i<=numChins; i++){
        print(chinFold);
    }
    print chinBot;
    }
}
