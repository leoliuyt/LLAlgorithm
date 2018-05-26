//
//  CommonSuperFind.m
//  LLAlgorithm
//
//  Created by lbq on 2018/5/26.
//  Copyright © 2018年 leoliu. All rights reserved.
//

#import "CommonSuperFind.h"

@implementation CommonSuperFind

- (NSArray <UIView *>*)findCommonSuperView:(UIView *)viewOne other:(UIView *)viewOther
{
    NSMutableArray *result = [NSMutableArray array];
    NSArray *arrayOne = [self findSuperView:viewOne];
    NSArray *arrayOther = [self findSuperView:viewOther];
    int i = 0;
    while (i < MIN(arrayOne.count, arrayOther.count)) {
        UIView *superOne = [arrayOne objectAtIndex:arrayOne.count - 1 - i];
        UIView *superOther = [arrayOther objectAtIndex:arrayOther.count - 1 - i];
        if (superOne == superOther) {
            [result addObject:superOne];
            i++;
        } else {
            break;
        }
        
    }
    return result;
}

- (NSArray <UIView *> *)findSuperView:(UIView *)view
{
    UIView *temp = view.superview;
    NSMutableArray *result = [NSMutableArray array];
    while (temp) {
        [result addObject:temp];
        temp = temp.superview;
    }
    return [result copy];
}

@end
