c1=[2;3;1];
A1=[1,4,2;3,2,0];
b1=[8;6];
c1'*linprog(c1,-A1,-b1,[],[],zeros(3,1))
A2=[A1;eye(3)];
b2=[b1;zeros(3,1)];
c1'*linprog(c1,-A2,-b2)