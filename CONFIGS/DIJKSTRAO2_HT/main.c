/* Test basic c functionality.  */

#define DEBUG 1
#define DBGFINE 0
#define V 9

#include "../support/support.h"

void buserr_except(){}
void dpf_except(){}
void ipf_except(){}
void lpint_except(){}
void align_except(){}
void illegal_except(){}
void hpint_except(){}
void dtlbmiss_except(){}
void itlbmiss_except(){}
void range_except(){}
void syscall_except(){}
void res1_except(){}
void trap_except(){}
void res2_except(){}

extern void dijkstra(int array[][], int end);



int main()
{	
    signed long res = 0;



#if DEBUG
    report(0xcafecafe);			/* print in sim/log/general.log */
#endif

	/* Let us create the example graph discussed above */
	int graph[V][V] = {{0, 4, 0, 0, 0, 0, 0, 8, 0},
		{4, 0, 8, 0, 0, 0, 0, 11, 0},
		{0, 8, 0, 7, 0, 4, 0, 0, 2},
		{0, 0, 7, 0, 9, 14, 0, 0, 0},
		{0, 0, 0, 9, 0, 10, 0, 0, 0},
		{0, 0, 4, 14, 10, 0, 2, 0, 0},
		{0, 0, 0, 0, 0, 2, 0, 1, 6},
		{8, 11, 0, 0, 0, 0, 1, 0, 7},
		{0, 0, 2, 0, 0, 0, 6, 7, 0}
	};

	dijkstra(graph, 0);
	return 0;

}

