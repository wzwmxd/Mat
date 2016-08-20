import matplotlib.pyplot as plt
import networkx as nx
import matplotlib

G=nx.Graph()
for i in range(11):
	if i==0:
		G.add_node(0,time='Enter/Exit')
		continue
	G.add_node(i,time=chr(ord('A')+i-1))
edges=[
(0,1,{'time':'300m'}),(0,2,{'time':'400m'}),
(1,2,{'time':'300m'}),(1,5,{'time':'350m'}),(1,10,{'time':'250m'}),
(2,5,{'time':'350m'}),(2,3,{'time':'300m'}),
(3,5,{'time':'450m'}),(3,4,{'time':'450m'}),
(4,6,{'time':'500m'}),(5,7,{'time':'550m'}),(5,9,{'time':'450m'}),
(6,7,{'time':'550m'}),(7,8,{'time':'450m'}),(8,9,{'time':'450m'}),
(9,10,{'time':'350m'})
]
G.add_edges_from(edges)
nx.draw(G)
plt.show()