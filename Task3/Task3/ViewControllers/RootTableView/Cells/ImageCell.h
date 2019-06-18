//
//  ImageCell.h
//  Task3
//
//  Created by Roma on 6/17/19.
//  Copyright © 2019 Roman. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RKImage.h"

NS_ASSUME_NONNULL_BEGIN

@interface ImageCell : UITableViewCell
@property (strong, nonatomic) RKImage *image;
@property (strong, nonatomic, readonly) UIImageView *imageFromUrlView;
@end

NS_ASSUME_NONNULL_END
