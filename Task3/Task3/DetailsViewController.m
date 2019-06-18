//
//  DetailsViewController.m
//  Task3
//
//  Created by Roma on 6/17/19.
//  Copyright © 2019 Roman. All rights reserved.
//

#import "DetailsViewController.h"
#import "RKImage.h"

@interface DetailsViewController ()
@property (strong, nonatomic) RKImage *imageSource;
@property (strong, nonatomic) UIScrollView *scrolView;
@end

@implementation DetailsViewController

- (instancetype)initWithImage:(RKImage *)image {
    self = [super init];
    if (self) {
        _imageSource = image;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.redColor;
    self.scrolView = [[UIScrollView alloc] init];
    self.scrolView.translatesAutoresizingMaskIntoConstraints = false;
    self.scrolView.backgroundColor = UIColor.cyanColor;
    [self.view addSubview:self.scrolView];
   
    [NSLayoutConstraint activateConstraints:
  @[
    [self.scrolView.topAnchor constraintEqualToAnchor:self.view.topAnchor],
    [self.scrolView.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor],
    [self.scrolView.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor],
    [self.scrolView.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor],
    ]];
    
    
    UIImage *image = (self.imageSource.image)? self.imageSource.image: [UIImage imageNamed:@"noimage"];
    self.scrolView.contentSize = image.size;
    UIImageView *imageView = [[UIImageView alloc] initWithImage: image];
    [self.scrolView addSubview:imageView];
}

//- (void)viewDidAppear:(BOOL)animated{
//    [super viewDidAppear:YES];
//    self.table
//}



@end
