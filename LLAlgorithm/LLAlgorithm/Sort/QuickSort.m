//
//  QuickSort.m
//  LLAlgorithm
//
//  Created by lbq on 2018/6/9.
//  Copyright © 2018年 leoliu. All rights reserved.
//

#import "QuickSort.h"

@implementation QuickSort

void swap(int * x,int *y){
    int tmp = *x;
    *x = *y;
    *y = tmp;
}

static int callCount = 0;
int partion(int *a ,int left,int right)
{
    int j = left;
    int i = j - 1;//用来指向小于基准元素的最右边的位置,i+1后就代表了第一个大于基准元素的位置
    int key = a[right];//基准元素
    for(;j < right; j++){
        if(a[j] <= key){
            swap(&a[j], &a[++i]);
        }
    }
    //基准元素放在中间
    swap(&a[right], &a[++i]);
    
    callCount++;
    printQuickSort(a, 10, callCount);
    return i;
}

void quickSort(int *a, int left, int right){
    if(left >= right){return;}
    int mid = partion(a, left, right);
    quickSort(a, left, mid - 1);
    quickSort(a, mid + 1, right);
}

void printQuickSort(int *arr ,int count,int n){
    printf("第%tu次打印:",n);
    for (int i = 0; i < count; i++) {
        if (i == count-1) {
            printf("%tu\n",arr[i]);
        } else {
            printf("%tu-",arr[i]);
        }
    }
}

@end
