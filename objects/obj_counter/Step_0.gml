if (t <= 0) { //If the time has ran out, destory ourself.
    instance_destroy();
}

t--; //Minuses our timer by 1.
if (show < num) { //If our display number is smaller than the ammount won, incrase it.
    show += num / 240;
} else if (show > num) { //If our display number is larger than the ammount won, set it to the ammount won.
    show = num;
}

