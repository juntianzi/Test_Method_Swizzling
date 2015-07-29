//
//  main.m
//  Test_Method_Swizzling
//
//  Created by caf on 15/7/29.
//  Copyright (c) 2015年 kkkwan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSArray+Swizzle.h"
#import <objc/runtime.h>
/**
 *  <#Description#>
 *
 *  @param argc <#argc description#>
 *  @param argv <#argv description#>
 *
 *  @return <#return value description#>
 */
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Method ori_Method = class_getInstanceMethod([NSArray class], @selector(lastObject));
        Method my_Method = class_getInstanceMethod([NSArray class], @selector(myLastObject));
        method_exchangeImplementations(ori_Method, my_Method);
        
        NSArray *array = @[@"0",@"1",@"2",@"3"];
        NSString *string = [array lastObject];
        NSLog(@"Test Result : %@",string);
    }
    return 0;
}
