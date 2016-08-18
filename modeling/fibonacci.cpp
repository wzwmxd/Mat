//fibonacci∑®«Û∑Â÷µ
#include <stdio.h>
#include <stdlib.h>
typedef double (*MYFUN)(double);
double f(double x){
	return x*(x-1);
}
int *fib(int n){
	int *arr=(int*)malloc(sizeof(int)*(n+1));
	arr[0]=arr[1]=1;
	for(int i=2;i<=n;i++){
		arr[i]=arr[i-1]+arr[i-2];
	}
	return arr;
}
double find_min(MYFUN func,double x_min,double x_max,double delta,double eps,int n){
	int k=1;double a=x_min,b=x_max;
	int *F=fib(n);
	double t1=a+F[n-1]*(b-a)/F[n],t2=a+F[n-2]*(b-a)/F[n];
	while(k<n-1){
		printf("t1=%lf,t2=%lf\n",t1,t2);
		double f1=func(t1);
		double f2=func(t2);
		if(f1<f2){
			a=t2;t2=t1;
			t1=a+F[n-1-k]*(b-a)/F[n-k];
		}else{
			b=t1;t1=t2;
			t2=b+F[n-1-k]*(a-b)/F[n-k];
		}
		k++;
	}
	t2=(a+b)/2;
	t1=a+(1.0/2+eps)*(b-a);
	printf("t1=%lf,t2=%lf\n",t1,t2);
	double f1=func(t1);double f2=func(t2);
	if(f1>f2)return f2;else return f1;
}

int main(){
	printf("min = %lf",	find_min(f,0.0f,1.0f,1e-5,1e-7,50));
	return 0;
}
