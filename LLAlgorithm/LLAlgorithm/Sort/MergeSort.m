//
//  MergeSort.m
//  LLAlgorithm
//
//  Created by lbq on 2018/6/9.
//  Copyright © 2018年 leoliu. All rights reserved.
//

#import "MergeSort.h"

@implementation MergeSort

void merge(int *a,int left,int mid,int right){
    int len = right - left + 1;
    // 动态分配内存空间，如果失败就退出程序
    int *tmp = (int*)malloc(len*sizeof(int));
    int k = 0;
    int i = left;
    int j = mid + 1;
    while (i <= mid && j <= right) {
        tmp[k++] = a[i] < a[j] ? a[i++] : a[j++];
    }
    
    while (i <= mid) {
        tmp[k++] = a[i++];
    }
    
    while (j <= right) {
        tmp[k++] = a[j++];
    }
    
    for(int k = 0; k < len; k++){
        a[left++] = tmp[k];
    }
}

static int callCount = 0;
static int n = 0;
void mergeSort(int *a,int left,int right){
    if (left >= right) {
        return;
    }
    if (callCount == 0) {
        n = left + right + 1;
        printMergeSort(a, n, 0);
    }
    callCount++;
    int mid = (left + right) / 2;
    mergeSort(a, left, mid);
    mergeSort(a, mid+1, right);
    merge(a, left, mid, right);
    
    printMergeSort(a, n, callCount);
}

void printMergeSort(int *arr, int count, int n){
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
