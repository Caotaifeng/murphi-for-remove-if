
int n;
int x;
int y;

int main() 
{
	if(n>=0) {
		x = n;
		y = n;
		while(x > 0)
		{
			x=x-1;
			y=y-1;
		}
		assert(x+y == 0);
	}
}
