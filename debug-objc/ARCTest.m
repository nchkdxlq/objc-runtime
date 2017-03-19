//
//  ARCTest.m
//  objc
//
//  Created by nchkdxlq on 2017/3/18.
//
//

#import "ARCTest.h"

__weak NSObject *weak_obj = nil;

@implementation ARCTest

+ (void)arc_strong {
    
    NSObject *obj = [[NSObject alloc] init];
    
    NSObject *obj1 = nil;
    obj1 = obj;
    
    obj1 = nil;
}



+ (void)arc_weak {
    
    NSObject *obj = [[NSObject alloc] init];
    weak_obj = obj; // objc_storeWeak(&weak_obj, obj)
    NSLog(@"weak_obj = %@", weak_obj);
}


@end
