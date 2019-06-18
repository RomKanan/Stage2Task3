//
//  RKImage.h
//  Task3
//
//  Created by Roma on 6/17/19.
//  Copyright © 2019 Roman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@class RKImage;

@protocol RKImageProtocole <NSObject>
- (void)imageDidUpload;

@end

@interface RKImage : NSObject

@property (strong, atomic, readonly) UIImage *image;
@property (strong, nonatomic, readonly) NSString *imageURL;
@property (assign, atomic, readonly) BOOL IsLoading;
@property (assign, atomic, readonly) BOOL IsLoaded;
@property (strong, nonatomic) id<RKImageProtocole> delegate;

- (instancetype)initWithUrl:(NSString *)url;
- (void)beginUploadImage;

@end

