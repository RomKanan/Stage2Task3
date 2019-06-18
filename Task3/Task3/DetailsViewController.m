//
//  DetailsViewController.m
//  Task3
//
//  Created by Roma on 6/17/19.
//  Copyright © 2019 Roman. All rights reserved.
//

#import "DetailsViewController.h"
#import "RKImage.h"
#import "UIImage+AspectRatio.h"


@interface DetailsViewController ()<RKImageProtocole>
@property (strong, nonatomic) RKImage *imageSource;
@property (strong, nonatomic) UIScrollView *scrolView;
@property (strong, nonatomic) UIImageView *imageView;
@end

@implementation DetailsViewController

- (instancetype)initWithImage:(RKImage *)image {
    self = [super init];
    if (self) {
        _imageSource = image;
        _imageSource.delegate = self;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIBarButtonItem *back = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemReply target:self action:@selector(backPushed:)];
    self.navigationItem.leftBarButtonItems = @[back];
    self.navigationItem.hidesBackButton = YES;
    self.title = @"Image";
    self.view.backgroundColor = UIColor.whiteColor;
   
    self.scrolView = [[UIScrollView alloc] init];
    self.scrolView.translatesAutoresizingMaskIntoConstraints = false;
    [self.view addSubview:self.scrolView];
   
    [NSLayoutConstraint activateConstraints:
  @[
    [self.scrolView.topAnchor constraintEqualToAnchor:self.view.topAnchor],
    [self.scrolView.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor],
    [self.scrolView.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor],
    [self.scrolView.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor],
    ]];
    
    UIImage *image = (self.imageSource.IsLoaded)? self.imageSource.image: [UIImage imageNamed:@"noimage"];
    self.imageView = [[UIImageView alloc] initWithImage: image];
    CGFloat imageWidth = UIScreen.mainScreen.bounds.size.width;
    CGFloat imageHeigh = imageWidth * [image imageAspectRatio];
    self.scrolView.contentSize = CGSizeMake(imageWidth, imageHeigh);
    self.imageView.frame = CGRectMake(0, 0, imageWidth, imageHeigh);
    [self.scrolView addSubview:self.imageView];
}

- (void)imageDidUpload {
    UIImage *image = self.imageSource.image;
    CGFloat imageWidth = UIScreen.mainScreen.bounds.size.width;
    CGFloat imageHeigh = imageWidth * [image imageAspectRatio];
    self.scrolView.contentSize = CGSizeMake(imageWidth, imageHeigh);
    self.imageView.frame = CGRectMake(0, 0, imageWidth, imageHeigh);
    self.imageView.image = image;
}

- (void)backPushed:(id)send {
    [self.navigationController popViewControllerAnimated:YES];
}



@end
