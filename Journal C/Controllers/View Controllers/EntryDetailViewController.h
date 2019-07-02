//
//  EntryDetailViewController.h
//  Journal C
//
//  Created by Darin Marcus Armstrong on 7/1/19.
//  Copyright © 2019 Darin Marcus Armstrong. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Entry.h"

NS_ASSUME_NONNULL_BEGIN

@interface EntryDetailViewController : UIViewController

@property (strong, nonatomic) Entry * entry;

@end

NS_ASSUME_NONNULL_END
