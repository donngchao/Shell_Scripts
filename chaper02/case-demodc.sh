#! /bin/bash
read -p "please input a character:(~!@#$%):" character
case $character in
[~])
    echo "the character of ~ means happy.";;
[/!])
    echo "the character of ! means angery.";;
[@])
    echo "the character of @ means internet.";;
[#])
    echo "the character of # means number.";;
[$])
    echo "the character of $ means shell.";;
[/%])
    echo "the character of % means mod calculation.";;
*)
    echo "the character is out of range.";;
esac

