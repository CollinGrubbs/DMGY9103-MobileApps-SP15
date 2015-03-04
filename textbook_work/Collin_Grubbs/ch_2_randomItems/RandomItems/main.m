//
//  main.m
//  RandomItems
//
//  Created by Nathan Marianovsky on 2/25/15.
//  Copyright (c) 2015 Collin Grubbs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // create a mutable array object, store its address in items variable
        NSMutableArray *items = [[NSMutableArray alloc] init];
        
        for (int i = 0; i < 10; i++) {
            BNRItem *item = [BNRItem randomItem];
            [items addObject:item];
        }
        
        for (BNRItem *item in items) {
            NSLog(@"%@", item);
        }
        
        // destroy the mutable array object
        items = nil;
        
    }
    return 0;
}

