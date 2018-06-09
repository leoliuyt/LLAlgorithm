//
//  InsertSort.m
//  LLAlgorithm
//
//  Created by lbq on 2018/6/9.
//  Copyright © 2018年 leoliu. All rights reserved.
//

#import "InsertSort.h"

@implementation InsertSort
void insertSort(int *a,int count){
    int tmp = 0;
    printInsertSort(a, count, 0);
    for (int i = 1; i < count; i++) {
        int j = i - 1;
        if (a[i] < a[j]) {
            tmp = a[i];
            a[i] = a[j];
            while (j-1 >= 0 && tmp < a[j-1]) {
                a[j] = a[j-1];
                j--;
            }
            a[j] = tmp;
        }
        printInsertSort(a, count, i);
    }
}

void printInsertSort(int *arr,int count,int n){
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
