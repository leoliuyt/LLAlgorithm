//
//  HeapSort.m
//  LLAlgorithm
//
//  Created by lbq on 2018/6/9.
//  Copyright © 2018年 leoliu. All rights reserved.
//

#import "HeapSort.h"

@implementation HeapSort
void createBigHeap(int a[],int i, int n)
{
    for (; i >= 0; i--) {
        int left = 2*i + 1;//左节点
        int right = 2*i + 2;//右节点
        int j = 0;
        
        //找到左右节点中较大的那个
        if (right < n) {
            if (a[left] < a[right]) {
                j = right;
            } else {
                j = left;
            }
        } else {
            j = left;
        }
        
        //子节点大于父节点时，交换
        if (a[j] > a[i]) {
            int tmp = a[i];
            a[i] = a[j];
            a[j] = tmp;
        }
    }
}

void heapSort(int *a,int n){
    //如果有n个元素 那么最后一个非叶子节点为n/2-1
    createBigHeap(a, n/2 - 1 , n);//创建大顶堆
    printHeapSort(a, n, 0);
    for (int j = n - 1; j >= 0; j--) {
        int tmp = a[0];
        a[0] = a[j];
        a[j] = tmp;
        
        int i = j /2 - 1;
        createBigHeap(a, i, j);
        printHeapSort(a, n, n-j);
    }
}

void printHeapSort(int *arr, int count, int n){
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
