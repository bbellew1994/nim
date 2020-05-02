
#include <stdlib.h>
#include  <stdio.h>
 
int userTurn(int pieces, int usertake);
int computerTurn(int pieces, int computertake);
 
int main(void)
{
 
	int pieces = (rand() % 12) +12;
	printf("%d pieces\n",pieces);
 
	while(pieces > 0)
	{
 int computertake = (rand() % 3) +1;
 
 if (pieces==2){
     computertake=(rand()%2)+1;
     pieces=0;
     printf("Computer takes %d pieces.\n", computertake);
     printf("Computer wins.");
     break;
 }
 if (pieces==1){
     computertake=1;
     pieces=0;
     printf("Computer takes %d pieces.\n", computertake);
     printf("Computer wins.");
     break;
 }
		pieces = computerTurn(pieces, computertake);
	
		printf("Pick number of pieces to take between 1 and 3: ");
 
		int usertake;
		scanf("%d", &usertake);
 
		int nextpieces = userTurn(pieces,usertake);
 	pieces = nextpieces;
		if (nextpieces == 0)
		{
			printf("You win");
			break;
		}

		
	}

	return 0;
}
  
int computerTurn(int pieces,int computertake)
{
	
	int remainingpieces = pieces - computertake;
 
 
	printf("Computer takes %d pieces.\n", computertake);
	printf("%d pieces remaining.\n\n", remainingpieces);
 
 
	return remainingpieces;
}
int userTurn(int pieces, int usertake)
{
	if (usertake < 1 || usertake > 3)
	{
		printf("\ntake must be between 1 and 3.\n\n");
		return pieces;
	}
	int remainingpieces = pieces - usertake;
 
	printf("%d pieces remaining.\n\n", remainingpieces);
 
	return remainingpieces;
}
