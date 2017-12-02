/*****   macros create functional code   *****/
#include <stdio.h>
#define pivot_index() (begin+(end-begin)/2)
#define swap(a,b,t) ((t)=(a),(a)=(b),(b)=(t))


void quick(int array[], int start, int end){
    static int t;     /* temporary variable for swap */
    if(start < end){
        int l=start+1, r=end, p = array[start];
        while(l<r){
            if(array[l] <= p)
                l++;
            else if(array[r] >= p)
                r--;
            else
                swap(array[l],array[r],t);
        }
        if(array[l] < p){
            swap(array[l],array[start],t);
            l--;
        }
        else{
            l--;
            swap(array[l],array[start],t);
        }
        quick(array, start, l);
        quick(array, r, end);
    }
}









#undef swap
#undef pivot_index
