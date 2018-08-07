#!/bin/bash

#adjust your quote database
text=$(/usr/games/fortune);
#text=$(/usr/games/fortune riddles);
#text=$(/usr/games/fortune fortunes);
#text=$(/usr/games/fortune literature);

#available cowsay modi
modi=(
    "-f apt" 
    "-f beavis.zen" 
    "-f bong" 
    "-f bud-frogs" 
    "-f bunny" 
    "-f calvin" 
    "-f cheese" 
    "-f cock" 
    "-f cower" 
    "-f daemon" 
    "-f default" 
    "-f dragon" 
    "-f dragon-and-cow" 
    "-f duck" 
    "-f elephant" 
    "-f elephant-in-snake" 
    "-f eyes" 
    "-f flaming-sheep" 
    "-f ghostbusters" 
    "-f gnu" 
    "-f head-in" 
    "-f hellokitty" 
    "-f kiss" 
    "-f kitty" 
    "-f koala" 
    "-f kosh" 
    "-f luke-koala" 
    "-f mech-and-cow" 
    "-f meow" 
    "-f milk" 
    "-f moofasa" 
    "-f moose" 
    "-f mutilated" 
    "-f pony" 
    "-f pony-smaller" 
    "-f ren" 
    "-f sheep" 
    "-f skeleton" 
    "-f snowman" 
    "-f sodomized-sheep" 
    "-f stegosaurus" 
    "-f stimpy" 
    "-f suse" 
    "-f three-eyes" 
    "-f turkey" 
    "-f turtle" 
    "-f tux" 
    "-f unipony" 
    "-f unipony-smaller" 
    "-f vader" 
    "-f vader-koala" 
    "-f www"  
    "-b" "-d" "-g" "-p" "-s" "-t" "-w" "-y"
);

# just the time in seconds as pseudorandom (super cheesy)
randint=$(date +%s);

#pick one element from modi array
modus=${modi[${randint} % ${#modi[@]}]};

#run cowsay
/usr/games/cowsay ${modus} ${text}

#successfully done
exit 0
