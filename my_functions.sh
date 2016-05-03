function fl() { 
    # cat "$1" | cb; 
    find . -iname "*$1*";
}

function app() {
    mv $1 _$1;
}
