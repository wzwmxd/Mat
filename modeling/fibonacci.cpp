//fibonacci法求峰值
#include <stdio.h>
#include <stdlib.h>
#include <math.h> 
typedef double (*MYFUN)(double);
double f(double x){
	//return sin(6*x)+sin(17*x); 
	return x*x-x+2;
}
int *fib(int n){
	int *arr=(int*)malloc(sizeof(int)*(n+1));
	arr[0]=arr[1]=1;
	for(int i=2;i<=n;i++){
		arr[i]=arr[i-1]+arr[i-2];
	}
	return arr;
}
//func为待求函数，x_min下界，x_max上界，delta,eps，n为迭代次数 
double find_min(MYFUN func,double x_min,double x_max,double delta,double eps,int n){
	int k=1;double a=x_min,b=x_max;
	int *F=fib(n);
	if((x_max-x_min)/F[n]>delta){
		printf("精度不够，请增加迭代次数\n");
		return 0.0f;
	}
	//for(int i=0;i<=n;i++)printf("%d ",F[i]);
	//printf("\n");
	double t1=a+F[n-1]*(b-a)/F[n],t2=a+F[n-2]*(b-a)/F[n];
	while(k<n-1){
		printf("step %d: t1=%lf,t2=%lf\n",k,t1,t2);
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
	printf("last step: t1=%lf,t2=%lf\n",t1,t2);
	double f1=func(t1);double f2=func(t2);
	if(f1>f2)return f2;else return f1;
}

int main(){
	//注意，fibonacci数列增长极快，迭代次数不能太大 
	printf("min = %lf",	find_min(f,0.0f,1.0f,0.08f*4,1e-7,20));
	return 0;
}
