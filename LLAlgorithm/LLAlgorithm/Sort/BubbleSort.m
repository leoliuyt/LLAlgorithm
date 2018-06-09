//
//  BubbleSort.m
//  LLAlgorithm
//
//  Created by lbq on 2018/6/9.
//  Copyright © 2018年 leoliu. All rights reserved.
//

#import "BubbleSort.h"

@implementation BubbleSort

void bubbleSort(int *arr, int count)
{
    for (int i = 0 ; i < count - 1; i++) {
        printEachArr(arr, count,i);
        for (int j = 0; j < count - i - 1; j++) {
            if (arr[j] > arr[j+1]) {
                int tmp = arr[j];
                arr[j] = arr[j+1];
                arr[j+1] = tmp;
            }
        }
    }
    printEachArr(arr, count,count-1);
}

void printEachArr(int *arr, int count, int order){
    for (int i = 0; i < count; i++) {
        if (i == count - 1) {
            printf("%tu\n",arr[i]);
        } else {
            if (order >= 0 && i == 0) {
                 printf("第%tu次打印结果:%tu-",order,arr[i]);
            } else {
                printf("%tu-",arr[i]);
            }
        }
    }
}

@end
