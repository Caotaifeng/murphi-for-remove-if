type number : -10..10;
var n : number;
	x : number;
	y : number;
	res : number;


ruleset i : number do startstate "Init"
begin
    n := i;
	x := n;
	y := n;
	res := 0;
endstartstate;endruleset;

rule "loop"
	n >= 0 & x > 0 ==> begin
	x := x - 1;y := y - 1;endrule;

rule "assert"
	n >= 0 & x <= 0 ==> begin
	res := x + y;endrule;
	
	
	
invariant "if"
  n >= 0 -> res = 0;