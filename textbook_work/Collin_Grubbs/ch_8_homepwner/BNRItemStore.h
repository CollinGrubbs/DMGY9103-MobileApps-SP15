//
//  BNRItemStore.h
//  Homepwner
//
//  Created by Nathan Marianovsky on 3/4/15.
//  Copyright (c) 2015 Collin Grubbs. All rights reserved.
//

#import <Foundation/Foundation.h>

@class BNRItem;

@interface BNRItemStore : NSObject

@property (nonatomic, readonly) NSArray *allItems;

// Notice that this is a class method and prefixed with a + instead of a -
+ (instancetype)sharedStore;
- (BNRItem *)createItem;

@end
