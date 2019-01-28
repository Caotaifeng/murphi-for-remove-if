
const


type

  number : -5..5;
  number2 : -10..10;

var

  size : number2;
  copy : number2;
  available : number;
  res_size : number2;
  res_copy : number2;
  res_and : number2;

rule "assert1"
size <= 0
==>
Begin
  res_size := size;
  res_copy := copy;
endrule;

rule "loop2"
  available > size &
  size > 0
==>
Begin
  copy := copy + available;
  size := size - available;
endrule;

ruleset  m : number; n : number; k : number do
startstate
  size := m;
  copy := n;
  available := k;
  res_size := 1;
  res_copy := m + n;
  res_and := m + n;
endstartstate;
endruleset;
invariant "main"
  (res_size != 0 |
  res_copy = res_and);

