//
//  CharReverse.m
//  LLAlgorithm
//
//  Created by leoliu on 2018/5/25.
//  Copyright © 2018年 leoliu. All rights reserved.
//

#import "CharReverse.h"

@implementation CharReverse

//字符串反转
void charReverse(char *chars)
{
    char *headPoint = chars;
    char *endPoint = chars + strlen(chars) - 1;
    while (headPoint <= endPoint) {
        char temp = *headPoint;
        *(headPoint++) = *endPoint;
        *(endPoint--) = temp;
    }
}

@end
