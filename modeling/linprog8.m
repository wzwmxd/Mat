global ALPHA BETA
ALPHA=0.01
BETA=0.02
[t,y]=ode23(@lotka,[0,10],[1;1]);
plot(t,y)