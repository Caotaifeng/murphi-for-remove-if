
int x=0;
int y=50;
int main() {
while(x<100){
	if(x+1>50)
	{
		x=x+1;
		y=y+1;
	}
	else
	{
		x=x+1;
	}
}
assert(y==100);
}
