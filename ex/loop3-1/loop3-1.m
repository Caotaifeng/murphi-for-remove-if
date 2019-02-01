type number : 0..200;
var x : number;
	y : number;
	res_y : number;


startstate "Init"
begin
	x := 0;
	y := 50;
	res_y := 100;
endstartstate;

rule "loop"
	x < 100 ==> begin
	if(x + 1 > 50)then
		x := x + 1;
		y := y + 1;
	else
		x := x + 1;
	end;
	endrule;

rule "assert"
	x >= 100 ==> begin
	res_y := y;
	endrule;
	
	
	
invariant "loop3"
  res_y = 100;