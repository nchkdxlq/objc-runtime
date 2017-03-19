//
//  TestClass.m
//  objc
//
//  Created by nchkdxlq on 2017/3/5.
//
//

#import "TestClass.h"

@implementation TestClass

- (void)dealloc {
    NSLog(@"retainCount = %lu", [self retainCount]);
    
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    // code
    NSAutoreleasePool *pool1 = [[NSAutoreleasePool alloc] init];
    //code
    NSObject *obj = [[NSObject alloc] init];
    [obj autorelease];
    
    [pool1 drain];
    
    [pool drain];
    
    
    @autoreleasepool {
        // code...
        @autoreleasepool {
            //code...
        }
    }
    
    [super dealloc];
}

@end
