/*- Ilustra el primer algoritmo de Dekker
 */
#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>
#include <unistd.h> /*sleep()*/

void task1();
void task2();
int g1=0;
int g2=0;

int want1 = 0;
int want2 = 0;
int turn = 1;

int var1=0;
int var2=0;

int main(int argc,char *argv[])
{
pthread_t thrd1,thrd2;
int ret;
	    	      
/*Crea el primer hilo*/
ret=pthread_create(&thrd1,NULL,(void*)task1,(void*)&g1);
        if(ret){
	    perror("pthread_create: task1");
            exit(EXIT_FAILURE);
	  }
/*Crea el segundo hilo*/
ret=pthread_create(&thrd2,NULL,(void*)task2,(void*)&g1);
        if(ret){
	        perror("pthread_create: task2");
	    exit(EXIT_FAILURE);
	     }
  		     // pthread_join(thrd2,NULL);
												     // // pthread_join(thrd1,NULL);
	while(1){
	if((var1==1)&&(var2==1))
	break;
	}
    	exit(EXIT_SUCCESS);
}/* end main()*/

void task1()
{
  while(1){
	  sleep(1);
          printf("task1 Seccion no critica");
	  want1 = 1;
	  while(want2){
		  if(turn==2){
			want1=0;
			while(!(turn==1));
			want1=1;
			}
		}
          printf("task1 Seccion critica");
	  turn=2;
	  want1=0;
	}
  var1=1;
}

void task2()
{
while(1){
	sleep(1);
	printf("task2 Seccion no critica");
	want2 = 1;
	while(want1){
	  if(turn==1){
	  want2=0;
	  while(!(turn==2));
	  want2=1;
	       } 
	      }
	printf("task2 Seccion critica");
	sleep(1);
	turn=1;
	want2=0;		
	}
var2=1;
}
