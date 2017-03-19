//
//  MRCTest.m
//  objc
//
//  Created by nchkdxlq on 2017/3/18.
//
//

#import "MRCTest.h"
#import "TestClass.h"


@implementation MRCTest


+ (void)mrc_referenceCount {
    
    TestClass *obj = [[TestClass alloc] init];
    
    NSLog(@"retainCount = %lu", [obj retainCount]);
    
    [obj retain];
    
    NSLog(@"retainCount = %lu", [obj retainCount]);
    
    [obj release];
    
    [obj release];
}


@end
