# cacti-weathermap
plugin for cacti
<h1>This is a port for use with tools, utilities, & libraries I see fit. There is no expectation that anyone cares. 
  No warranty expressed or otherwise to the functionality of the code presented here.</h1>

[x] Shoe-horn of [Panzoom](https://www.jqueryscript.net/zoom/jQuery-Plugin-For-Panning-Zooming-Any-Elements-panzoom.html#google_vignette) project into map edit & display flows
[ ] Cleanup of class variables, and thinking about how to OO the code
[ ] Convert the use of OS files as the method of storage for map, node, & link data/configurations



Example of how to use one source for both ends of a link
SCALE ifstatus 0    0.001 255   0   0  
SCALE ifstatus 0.99 1.1    0 255   0  
SCALE ifstatus 1.9  2.1    0   0 255  

LINK node03252-node1
	WIDTH 15
	USESCALE ifstatus absolute
	INFOURL graph_view.php?action=preview&amp;reset=true&amp;style=selective&amp;graph_list=65
	OVERLIBGRAPH graph_image.php?local_graph_id=65
	TARGET gauge:someotherthing_int_status_94.rrd:int_status:int_status
	INCOMMENT In
	OUTCOMMENT Out
	NODES node03252 node1
	BANDWIDTH 2


