//
//  SelectSort.m
//  LLAlgorithm
//
//  Created by lbq on 2018/6/9.
//  Copyright © 2018年 leoliu. All rights reserved.
//

#import "SelectSort.h"

@implementation SelectSort
void selectSort(int *a, int count){
    for (int i = 0; i < count; i ++) {
        printSelectSort(a, count,i);
        int key = i;
        for (int j = i + 1; i < count; j++) {
            if (a[j] < a[key]) {
                key = j;
            }
        }
        if (key != i) {
            int tmp = a[key];
            a[key] = a[i];
            a[i] = tmp;
        }
    }
}

void printSelectSort(int *arr, int count, int n){
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
