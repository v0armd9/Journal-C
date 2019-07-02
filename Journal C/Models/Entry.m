//
//  Entry.m
//  Journal C
//
//  Created by Darin Marcus Armstrong on 7/1/19.
//  Copyright © 2019 Darin Marcus Armstrong. All rights reserved.
//

#import "Entry.h"

@implementation Entry

- (instancetype)initWithTitle:(NSString *)title bodyText:(NSString *)bodyText {
    self = [super init];
    if (self) {
        _title = title;
        _bodyText = bodyText;
        _timestamp = [NSDate new];
    }
    return self;
}

@end
