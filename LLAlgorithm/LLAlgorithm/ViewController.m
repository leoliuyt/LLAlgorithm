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
#import "CommonSuperFind.h"
#import "HashFind.h"
#import "MedianFind.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *oneView;//1000
@property (weak, nonatomic) IBOutlet UIView *otherView;//1001

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
    
    NSArray<UIView *> *arr = [[CommonSuperFind new] findCommonSuperView:self.oneView other:self.otherView];
    [arr enumerateObjectsUsingBlock:^(UIView * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        NSLog(@"tag=%tu==%@==",obj.tag,obj.accessibilityLabel);
    }];
    
    char chs[] = "fabcabcd";
    char firstChar = findFirstChar(chs);
    printf("first char :%c\n",firstChar);
    
    
    int array[] = {1,4,5,6,10,3,8,7,9,2,11};
    int mid = findMedian(array, 11);
    printf("median = %tu",mid);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
