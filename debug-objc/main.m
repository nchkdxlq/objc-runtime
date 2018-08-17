
//  main.m
//  debug-objc
//
//  Created by closure on 2/24/16.
//
//

#import <Foundation/Foundation.h>

#import "TestClass.h"
#import "MRCTest.h"
#import "ARCTest.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        [MRCTest mrc_referenceCount];
        [ARCTest arc_strong];
        [ARCTest arc_weak];
    }
    return 0;
}
