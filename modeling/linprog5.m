tic
n=10000000;
rdnx=rand(n,1);
rdny=rand(n,1);
c=rdnx.^2+rdny.^2;
f=sum(logical(c<=1));
mypi=f/numel(rdnx)*4
toc