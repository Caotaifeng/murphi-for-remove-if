
int M;
int N;

int size = M;
int copy = N;

int main() 
{
	while(size  > 0)
	{
		int available;

		if(available > size)
		{
			copy = copy + available;
			size = size - available;
		}
	}
	assert( (size != 0) || (copy == M+N) );
}
