/******
 * t.c - Ilustra la creaci\'on de hilos con el algoritmo de Peterson0
 * 	*/
#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>
#include <unistd.h> /*sleep()*/

void task1();
void task2();
void entrar_region(int process);
void dejar_region(int process);
	
int g1=0;
int g2=0;

int var1=0;
int var2=0;

int FALSE=0;
int TRUE=1;
#define N 2
//int G=0; /*recurso compartido*/
int turn;
int elinterested[N];
						
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
												
		//	pthread_join(thrd2,NULL);
		//	//	pthread_join(thrd1,NULL);
	while(1){
		if((var1==1)&&(var2==1))
		break;
		}
										
			exit(EXIT_SUCCESS);
}/* end main()*/

void task1()
{
	while(1){
		printf("Seccion no critica");
		entrar_region(0);
		printf("Seccion critica");
		dejar_region(0);
		sleep(1);
	}
	var1=1;
}
	
void task2()
{
	while(1){
		printf("Seccion no critica");
		entrar_region(1);
		sleep(1);
		printf("Seccion critica");
		dejar_region(1);
		}
	var2=1;
}

void entrar_region(int process)
{
	int other;
	other=1-process;
	elinterested[process]=TRUE;
	turn=process;
	while((turn==process)&&(elinterested[other]==TRUE));
}

void dejar_region(int process)
{
	elinterested[process]=FALSE;
}
