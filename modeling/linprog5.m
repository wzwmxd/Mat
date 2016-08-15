n=95000000
tic
rdnx=rand(n,1);
rdny=rand(n,1);
toc
tic
4*mean(rdnx.^2+rdny.^2<1);
toc