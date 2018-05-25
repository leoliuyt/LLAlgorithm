//
//  ReverseList.m
//  LLAlgorithm
//
//  Created by leoliu on 2018/5/25.
//  Copyright © 2018年 leoliu. All rights reserved.
//

#import "ReverseList.h"

@implementation ReverseList
//链表反转
struct Node *reverseList(struct Node *head){
    struct Node *p = head;
    struct Node *newH = NULL;
    while (p != NULL) {
        //记录下一个结点
        struct Node *temp = p->next;
        //当前结点的next指向新链表头部
        p->next = newH;
        //更改新链表头部为当前结点
        newH = p;
        //移动p指针
        p = temp;
    }
    //返回反转后的链表头结点
    return newH;
}

//构造一个链表
struct Node *constructList(void){
    //头结点定义
    struct Node *head = NULL;
    //当前结点
    struct Node *cur = NULL;
    for (int i = 0; i < 5; i++){
        struct Node *node = malloc(sizeof(struct Node));
        node->data = i;
        //设置头结点
        if (head == NULL) {
            head = node;
        } else {//当前结点的next为新结点
            cur->next = node;
        }
        cur = node;
    }
    return head;
}

//打印链表中的数据
void printList(struct Node *head){
    struct Node *temp = head;
    while (temp != NULL) {
        printf("Node is %d\n",temp->data);
        temp = temp->next;
    }
}
@end
