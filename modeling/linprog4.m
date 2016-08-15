n=10
tic
rdngx=gpuArray.rand(n,1);
rdngy=gpuArray.rand(n,1);
toc
tic
4*mean(rdngx.^2+rdngy.^2<1);
toc