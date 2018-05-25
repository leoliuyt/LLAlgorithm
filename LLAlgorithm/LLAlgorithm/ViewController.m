//
//  ViewController.m
//  LLAlgorithm
//
//  Created by leoliu on 2018/5/25.
//  Copyright © 2018年 leoliu. All rights reserved.
//

#import "ViewController.h"
#import "CharReverse.h"
#import "ReverseList.h"
#import "MergeSortedList.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    char ch[] = "hello,world!";
    charReverse(ch);
    printf("reverse result is : %s\n",ch);
    
    struct Node *head = constructList();
    printList(head);
    printf("-------\n");
    struct Node *newHead = reverseList(head);
    printList(newHead);
    
    
    printf("-------\n");
    int a[5] = {1,4,6,7,9};
    int b[8] = {2,3,5,6,8,10,11,12};
    
    int result[13];
    mergeList(a, 5, b, 8, result);
    
    for (int i = 0; i < 13; i++){
        printf("merge list result : %tu \n",result[i]);
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
