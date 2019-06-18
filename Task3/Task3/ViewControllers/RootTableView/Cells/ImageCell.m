//
//  ImageCell.m
//  Task3
//
//  Created by Roma on 6/17/19.
//  Copyright © 2019 Roman. All rights reserved.
//

#import "ImageCell.h"

@interface ImageCell ()<RKImageProtocole>
@property (strong, nonatomic) UILabel *URLLable;
//@property (strong, nonatomic) UIImageView *imageFromUrlView;

@end

@implementation ImageCell

- (void)setImage:(RKImage *)image{
    if(self){
        _image = image;
        _image.delegate = self;
    }
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
   
    if (self) {
        _URLLable = [[UILabel alloc] init];
        _imageFromUrlView = [[UIImageView alloc] init];
        self.imageFromUrlView.userInteractionEnabled = YES;
        
        self.URLLable.numberOfLines = 0;
        [self addSubview: _URLLable];
        [self addSubview:_imageFromUrlView];
        _URLLable.translatesAutoresizingMaskIntoConstraints = NO;
        _imageFromUrlView.translatesAutoresizingMaskIntoConstraints = NO;
        
        [NSLayoutConstraint activateConstraints:
         @[
           [self.imageFromUrlView.centerYAnchor constraintEqualToAnchor:self.centerYAnchor],
           [self.imageFromUrlView.heightAnchor constraintEqualToConstant:75.f],
           [self.imageFromUrlView.widthAnchor constraintEqualToConstant:110.f],
           [self.imageFromUrlView.leadingAnchor constraintEqualToAnchor:self.leadingAnchor constant:20.f],
           [self.URLLable.leadingAnchor constraintEqualToAnchor:self.imageFromUrlView.trailingAnchor constant:20.f],
           [self.URLLable.trailingAnchor constraintEqualToAnchor:self.trailingAnchor constant: -20.f],
           [self.bottomAnchor constraintEqualToAnchor:self.URLLable.bottomAnchor constant:35],
           [self.topAnchor constraintEqualToAnchor:self.URLLable.topAnchor constant:-35]
           ]];
    }
    
    return self;
}

- (void)layoutSubviews{
    [super layoutSubviews];
    self.URLLable.text = _image.imageURL;
    self.imageFromUrlView.image = self.image.IsLoaded ? _image.image: [UIImage imageNamed:@"noimage"];
}

- (void)imageDidUpload {
    [self layoutSubviews];
}



@end
