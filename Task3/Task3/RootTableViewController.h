//
//  RootTableViewController.h
//  Task3
//
//  Created by Roma on 6/17/19.
//  Copyright © 2019 Roman. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RKImage.h"

NS_ASSUME_NONNULL_BEGIN



@interface RootTableViewController : UITableViewController
@property (strong, nonatomic) NSArray<RKImage *> *data;

@end

NS_ASSUME_NONNULL_END
