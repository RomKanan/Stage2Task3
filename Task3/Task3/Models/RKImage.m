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
@property (assign, atomic) BOOL IsLoading;
@property (strong, nonatomic) NSOperationQueue *downloadQueue;
@end

@implementation RKImage
-(void)beginUploadImage{
    self.IsLoading = YES;
    [self.downloadQueue addOperationWithBlock:^{
        NSURL *url = [NSURL URLWithString:self.imageURL];
        NSData *data = [NSData dataWithContentsOfURL:url];
        if (data) {
            self.image = [UIImage imageWithData:data];
        }
        dispatch_async(dispatch_get_main_queue(), ^{
            [self imageUploaded];
        });
    }];
}

-(void)imageUploaded{
    self.IsLoaded = YES;
    if ([self.delegate respondsToSelector:@selector(imageDidUpload)]) {
        [self.delegate imageDidUpload];
    }
}

- (instancetype)initWithUrl:(NSString *)url
{
    self = [super init];
    if (self) {
        _imageURL = url;
        _IsLoaded = NO;
        _IsLoading = NO;
        _downloadQueue = [[NSOperationQueue alloc] init];
        _downloadQueue.maxConcurrentOperationCount = 60;
    }
    
    return self;
}
@end
