//
//  DataSource.h
//  Task3
//
//  Created by Roma on 6/18/19.
//  Copyright © 2019 Roman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "RKImage.h"

NS_ASSUME_NONNULL_BEGIN

@interface DataSource : NSObject
@property (strong, nonatomic, readonly) NSArray<RKImage *> *images;
@end

NS_ASSUME_NONNULL_END
