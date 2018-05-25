//
//  ReverseList.h
//  LLAlgorithm
//
//  Created by leoliu on 2018/5/25.
//  Copyright © 2018年 leoliu. All rights reserved.
//

#import <Foundation/Foundation.h>
struct Node {
    int data;
    struct Node *next;
};

@interface ReverseList : NSObject
//链表反转
struct Node *reverseList(struct Node *head);

//构造一个链表
struct Node *constructList(void);

//打印链表中的数据
void printList(struct Node *head);
@end
