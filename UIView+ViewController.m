//
//  UIView+ViewController.m
//  作业_1
//
//  Created by mac on 15/11/3.
//  Copyright (c) 2015年 zsq. All rights reserved.
//

#import "UIView+ViewController.h"

@implementation UIView (ViewController)
- (UIViewController *)viewController{
    //响应者链
    
    UIResponder *next = self.nextResponder;
    do {
        if ([next isKindOfClass:[UIViewController class]]) {
            return (UIViewController *)next;
        }
        next = next.nextResponder;
    } while (next != nil);
    return nil;
}


@end
