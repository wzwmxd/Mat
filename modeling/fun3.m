function ret=fun3(u);
a=[2 3 2 4];
x=zeros(5,1);
for i=1:4
    x(i+1)=x(i)+u(i)-a(i);
end
ret=0.0;
for i=1:4
    ret=ret+0.01*x(i);
    if u(i)~=0.0
        ret=ret+3+u(i);
end
end