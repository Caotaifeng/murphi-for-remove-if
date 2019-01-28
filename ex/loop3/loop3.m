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
	x := x + 1;
	if(x > 50)then
		y := y + 1;
	end;
	endrule;

rule "assert"
	x >= 100 ==> begin
	res_y := y;
	endrule;
	
	
	
invariant "loop3"
  res_y = 100;