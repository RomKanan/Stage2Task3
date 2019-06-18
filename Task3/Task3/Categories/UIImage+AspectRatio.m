//
//  UIImage+AspectRatio.m
//  Task3
//
//  Created by Roma on 6/18/19.
//  Copyright © 2019 Roman. All rights reserved.
//

#import "UIImage+AspectRatio.h"

@implementation UIImage (AspectRatio)

- (CGFloat)imageAspectRatio {
    CGFloat ratio = self.size.height / self.size.width;
    return ratio;
}
@end
