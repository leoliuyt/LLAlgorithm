//
//  BitTree.h
//  LLAlgorithm
//
//  Created by leoliu on 2018/6/10.
//  Copyright © 2018年 leoliu. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef struct TreeNode{
    int data;
    struct TreeNode * left;
    struct TreeNode * right;
}TreeNode;


@interface BitTree : NSObject
TreeNode * creatBTree(int data[], int index, int n);

@end
