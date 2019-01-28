
const


type

  number : 0..200;

var

  x : number;
  y : number;
  res_y : number;

rule "assert1"
x >= 100
==>
Begin
  res_y := y;
endrule;

rule "loop2"
  x < 100 &
  x > 50
==>
Begin
  x := x + 1;
  y := y + 1;
endrule;

rule "loop3"
  x < 100 &
  x <= 50
==>
Begin
  x := x + 1;
endrule;

startstate
  x := 0;
  y := 50;
  res_y := 100;
endstartstate;
invariant "loop3"
  res_y = 100;

