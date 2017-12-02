/* Test basic c functionality.  */

#define DEBUG 1
#define DBGFINE 0

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

int arr[100] = {16,58, 33, 81, 89, 64, 10, 97, 75, 82, 83, 39, 2, 61, 86, 74, 67, 70, 52, 94, 30, 6, 43, 69, 15, 19, 7, 72, 65, 47, 66, 40, 62, 84, 59, 53, 21, 35, 71, 99, 57, 80, 54, 9, 73, 14, 1, 68, 20, 12, 41, 95, 34, 8, 42, 3, 11, 51, 32, 26, 37, 98, 45, 87, 5, 17, 76, 88, 4, 91, 77, 55, 28, 23, 63, 29, 46, 18, 85, 90, 25, 38, 44, 0, 24, 22, 79, 96, 78, 60, 31, 27, 92, 49, 48, 50, 13, 56, 93, 36};


signed long simple_test(signed long par);
extern signed long _simple_test_asm(int a,int b,int c,int d,int e,int f,int g,int h,int j,int k);



extern void quick(int array[], int begin, int end);



int main()
{	
	signed long res = 0;



#if DEBUG
	report(0xcafecafe);			/* print in sim/log/general.log */
#endif

	//res += _simple_test_asm(1,2,3,4,5,6,7,8,9,10);
	quick(arr,0,99);
	int i;
	for(i=0;i<100;i++) report(arr[i]);

	return 0;
}

