//
//  CommonSuperFind.h
//  LLAlgorithm
//
//  Created by lbq on 2018/5/26.
//  Copyright © 2018年 leoliu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface CommonSuperFind : NSObject

/*
 查找两个子视图的共同父view
 */
- (NSArray <UIView *>*)findCommonSuperView:(UIView *)viewOne other:(UIView *)viewOther;
@end
