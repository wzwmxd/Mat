#include <stdlib.h>
#include <time.h>
#include <stdio.h>
int sum(int *x){
	return x[0]+x[1]+x[2]+x[3]+x[4];
}
int f(int *x){
	return x[0]+x[1]*x[1]+3*x[2]*x[2]+4*x[3]*x[3]+2*x[4]*x[4]-8*x[0]-2*x[1]-3*x[2]-x[3]-2*x[4];
}
int ch1(int *x){
	return x[0]+2*x[1]+2*x[2]+x[3]+6*x[4]-800;
}
int ch2(int *x){
	return 2*x[0]+x[1]+6*x[2]-200;
}
int ch3(int *x){
	return x[2]+x[3]+5*x[4]-200;
}
int mente(int *x){
	if(sum(x)>400
	||ch1(x)>0
	||ch2(x)>0
	||ch3(x)>0)return -1;
	else return f(x);
}
int main(){
	srand(time(NULL));
	int x[5];
	int i;
	int m=0;
	for(i=0;i<100000000;i++){
		int j;
		for(j=0;j<5;j++)x[j]=rand()%100;
		int t=mente(x);
		if(t>=m)m=t;
	}
	printf("max = %d",m);
} 
