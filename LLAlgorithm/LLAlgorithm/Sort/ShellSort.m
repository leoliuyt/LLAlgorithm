//
//  ShellSort.m
//  LLAlgorithm
//
//  Created by lbq on 2018/6/9.
//  Copyright © 2018年 leoliu. All rights reserved.
//

#import "ShellSort.h"

@implementation ShellSort

void shellInsertSort(int *a,int n,int dk){
    for (int i = dk ; i < n; ++i) {
        int j = i - dk;
        if (a[i] < a[j]) {
            int tmp = a[i];
            while (j>=i%dk && a[j] > tmp) {
                a[j+dk] = a[j];
                j -= dk;
            }
            a[j+dk] = tmp;
        }
    }
}

static int callCount = 0;
void shellSort(int *a, int n){
    int dk = n/2;
    printShellSort(a, n, 0);
    while (dk >= 1) {
        shellInsertSort(a, n, dk);
        dk /= 2;
        callCount++;
        printShellSort(a, n, callCount);
    }
}
void printShellSort(int *arr,int count,int n){
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
