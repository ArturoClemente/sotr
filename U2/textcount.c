/*-----------------------------------------------*/
/* textcount: Count the number of characters in  */
/*            the file after deleting all the    */
/*            text formatting commands, lines	 */
/*            that begin with a "." in column 1  */
/*-----------------------------------------------*/
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

#define	R  0	/*  stdin and subscript for */
                /*  read end of the   pipe */
#define W  1	/*  stdout and subscript for */
	        /*  write end of the pipe  */
#define TRUE 1  
#define FALSE 0
#define PERIOD '.'

int
main()
{
	int pid;
	int p[2], q[2];
		FILE *fdopen(), *fp;
		int c;
		int newline = TRUE; 

		int total;

		pipe(p);
		pipe(q);

	switch (pid=fork()) {
	case 0:
	  close(p[W]);
	  close(R); dup(p[R]);close(p[R]);
	  close(q[R]);
	  close(W); dup(q[W]);close(q[W]);
	  execl("/home/usuario/Documentos/count","count",0);
	  printf("texcount: exec failed");
	 exit(1);
	case -1:
	  printf("textcount: cannot fork a process");
	 exit(1);
	default:{
	  close(p[R]); close(q[W]);
	  fp= fdopen(p[W],"w");
		}
	}
	while((c=getchar())!=EOF){
		switch(newline){
			case TRUE:
				if(c== '\n')
					putc(c,fp);
				else if(c==PERIOD)
					while((c=getchar())!=EOF&&c!='\n');
				else{
					putc(c,fp);
					newline=FALSE;
				}
				break;
			default:
				putc(c,fp);
				if(c=='\n');
				newline=TRUE;
		}
	}
	fclose(fp);
	close(R);dup(q[R]);close(q[R]);
	scanf("%d",&total);

	printf("Total number of characters %d\n", total);
	exit(0);
}

	  


