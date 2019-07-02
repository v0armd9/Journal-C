//
//  EntryController.m
//  Journal C
//
//  Created by Darin Marcus Armstrong on 7/1/19.
//  Copyright © 2019 Darin Marcus Armstrong. All rights reserved.
//

#import "EntryController.h"
#import "Entry.h"

@implementation EntryController

+ (instancetype)sharedInstance {
    static EntryController * shared = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shared = [EntryController new];
    });
    return shared;
}

- (instancetype)init {
    self = [super init];
    if (self) {
        _entries = [NSMutableArray new];
    }
    return self;
}

- (void)addEntry:(NSString *)title bodyText:(NSString *)bodyText {
    Entry * newEntry = [[Entry alloc] initWithTitle:title bodyText:bodyText];
    [_entries addObject:newEntry];
}

- (void)removeEntry:(Entry *)entry {
    [_entries removeObject:entry];
}

- (void)updateEntry:(Entry *)entry title:(NSString *)title bodyText:(NSString *)bodyText {
    entry.title = title;
    entry.bodyText = bodyText;
}

@end
