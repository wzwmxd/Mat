%利用蒙特卡洛模拟计算非线性规划问题
rand('state',sum(clock));
p0=0;
tic
for i=1:10^6
    x=99*rand(5,1);
    x1=floor(x);x2=ceil(x);
    [f,g]=mente(x1);
    if sum(g<=0)==4
        if p0<=f
            x0=x1;p0=f;
        end
    end
    [f,g]=mente(x2);
    if sum(g<=0)==4
        if p0<=f
            x0=x2;p0=f;
        end
    end
end
x0,p0
toc