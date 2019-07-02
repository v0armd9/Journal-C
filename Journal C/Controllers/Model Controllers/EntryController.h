//
//  EntryController.h
//  Journal C
//
//  Created by Darin Marcus Armstrong on 7/1/19.
//  Copyright © 2019 Darin Marcus Armstrong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Entry.h"

NS_ASSUME_NONNULL_BEGIN

@interface EntryController : NSObject

//Shared Instance
+(instancetype)sharedInstance;

//Source of Truth
@property (nonatomic, strong) NSMutableArray * entries;

//Create Functions
-(void)addEntry:(NSString *)title bodyText:(NSString *)bodyText;
-(void)removeEntry:(Entry *)entry;
-(void)updateEntry:(Entry *)entry title:(NSString *)title bodyText:(NSString *)bodyText;

@end

NS_ASSUME_NONNULL_END
