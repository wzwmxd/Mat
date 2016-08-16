function yp=lotka(t,y)
global ALPHA BETA
yp=[y(1)-ALPHA*y(1)*y(2);-y(2)+BETA*y(1)*y(2)];
