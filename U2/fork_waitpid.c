#include <stdio.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>

int main(int argc, char *argv[])
{
	pid_t pid;
	int intA;
	if((pid=fork())==0){/* hijo */
		printf("Teclea un entero: ");
		scanf("%d",&intA);
	//	  intA=(intA<0)?-intA:intA;
		  return intA;
	//	return intA%2;/*1 si es impar, 0 si es par*/
	}else{/* padre*/
		waitpid(pid,&intA,WUNTRACED|WCONTINUED);
		if(WIFEXITED(intA)){
			printf("intA=%d\n", intA=WEXITSTATUS(intA));
			//printf("El hijo dice que Ud. tecleo un ");
			printf("Ud. tecleo un ");
			//if(intA)
			if(intA%2)
				printf("impar,\n");
			else
				printf("par,\n");
		}else{
			printf("WIFEXITED(intA) devolvio false!!!!!\n");
		}
	}
	return 0;
}/*end main()*/
