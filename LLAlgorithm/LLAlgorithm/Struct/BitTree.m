//
//  BitTree.m
//  LLAlgorithm
//
//  Created by leoliu on 2018/6/10.
//  Copyright © 2018年 leoliu. All rights reserved.
//

#import "BitTree.h"

@implementation BitTree

TreeNode * creatBTree(int data[], int index, int n)
{
    TreeNode * pNode = NULL;
    
    if(index < n && data[index] != -1)  //数组中-1 表示该节点为空
    {
        pNode = (TreeNode *)malloc(sizeof(TreeNode));
        if(pNode == NULL)
            return NULL;
        pNode->data = data[index];
        pNode->left = creatBTree(data, 2 * index + 1, n);  //将二叉树按照层序遍历, 依次标序号, 从0开始
        pNode->right = creatBTree(data, 2 * index + 2, n);
    }
    
    return pNode;
}

void printBTree(TreeNode *rootNode){
    
}
@end
