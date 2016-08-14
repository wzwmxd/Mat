net=newff([-2 2],[4 1],{'tansig','purelin'},'trainlen','learngdm','msereg');
p=[-2 -1 0 1 2];
r=[0 1 1 1 0];
y=sim(net,p);
e=t-y;
net.performParam.ratio=20/(20+1);
perf=msereg(e,net)