//
//  NSArray+Swizzle.m
//  Test_Method_Swizzling
//
//  Created by caf on 15/7/29.
//  Copyright (c) 2015年 kkkwan. All rights reserved.
//
/**
 *  <#Description#>
 *
 *  @param Swizzle <#Swizzle description#>
 *
 *  @return <#return value description#>
 */
#import "NSArray+Swizzle.h"
/**
 *  <#Description#>
 */
@implementation NSArray (Swizzle)
/**
 *  <#Description#>
 *
 *  @return <#return value description#>
 */
- (id)myLastObject
{
    id ret = [self myLastObject];//这不递归了么？别忘记这是我们准备调换IMP的selector，[self myLastObject] 将会执行真的 [self lastObject] 。
    NSLog(@"***** myLastObject *****");
    return ret;
}

@end
