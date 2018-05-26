//
//  MergeSortedList.m
//  LLAlgorithm
//
//  Created by leoliu on 2018/5/25.
//  Copyright © 2018年 leoliu. All rights reserved.
//

#import "MergeSortedList.h"

@implementation MergeSortedList
//两个有序数组合并
void mergeList(int a[],int aLen,int b[],int bLen,int result[])
{
    int p = 0;
    int q = 0;
    int i = 0;
    while (p < aLen && q < bLen) {
        if(a[p] <= b[q]){
            result[i] = a[p];
            p++;
        } else {
            result[i] = b[q];
            q++;
        }
        i++;
    }
    
    while (p < aLen) {
        result[i] = a[p++];
        i++;
    }
    
    while (q < bLen) {
        result[i] = b[q++];
        i++;
    }
}
@end
