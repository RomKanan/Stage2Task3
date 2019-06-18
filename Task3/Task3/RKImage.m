//
//  RKImage.m
//  Task3
//
//  Created by Roma on 6/17/19.
//  Copyright © 2019 Roman. All rights reserved.
//

#import "RKImage.h"

@interface RKImage ()
@property (strong, atomic) UIImage *image;
@property (strong, nonatomic) NSString *imageURL;
@property (assign, atomic) BOOL IsLoaded;
@property (strong, nonatomic) NSOperationQueue *downloadQueue;
@end

@implementation RKImage
-(void)beginUploadImage{
   
}

-(void)imageUploaded{
}

- (instancetype)initWithUrl:(NSString *)url
{
    self = [super init];
    if (self) {
        _imageURL = url;
        _IsLoaded = NO;

    }
    return self;
}
@end
