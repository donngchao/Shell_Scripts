#! /bin/bash
read -p "tell me what you think: " a
case $a in
1)
    echo "you think about 1.";;
2)
    echo "you think about 2.";;
*)
    echo "I do not know what you think about...";;
esac
