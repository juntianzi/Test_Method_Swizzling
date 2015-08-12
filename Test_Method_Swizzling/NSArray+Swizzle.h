//
//  NSArray+Swizzle.h
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
#import <Foundation/Foundation.h>
/**
 *  <#Description#>
 */
@interface NSArray (Swizzle)
/**
 *  <#Description#>
 *
 *  @return <#return value description#>
 */
- (id)myLastObject;
/**
 *  <#Description#>
 */
@end
