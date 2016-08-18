function [f,df]=detaf(x);
f=x(1)^2-2*x(1)+25*x(2)^2;
df=[2*x(1)-2;50*x(2)];