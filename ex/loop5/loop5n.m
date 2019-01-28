
const


type

  number : -10..10;

var

  n : number;
  x : number;
  y : number;
  res : number;

rule "assert1"
  n >= 0 &
  x <= 0
==>
Begin
  res := x + y;
endrule;

rule "loop2"
  n >= 0 &
  x > 0
==>
Begin
  x := x - 1;
  y := y - 1;
endrule;

ruleset  i : number do
startstate
  n := i;
  x := n;
  y := n;
  res := 0;
endstartstate;
endruleset;
invariant "if"
  (n >= 0 ->
  res = 0);

