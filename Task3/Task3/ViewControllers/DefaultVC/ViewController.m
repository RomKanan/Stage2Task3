//
//  ViewController.m
//  Task3
//
//  Created by Roma on 6/18/19.
//  Copyright © 2019 Roman. All rights reserved.
//

#import "ViewController.h"
#import "RKImage.h"
#import "RootTableViewController.h"
#import "DataSource.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    self.title = @"Hold On";
    self.view.backgroundColor = UIColor.whiteColor;
    UILabel *warning = [[UILabel alloc]init];
    warning.textAlignment = NSTextAlignmentCenter;
    warning.numberOfLines = 3;
    warning.font = [UIFont boldSystemFontOfSize:24.f];
    warning.text = @"Hold on, we are checking your internet connection...";
    [self.view addSubview:warning];
    warning.translatesAutoresizingMaskIntoConstraints = NO;
    [NSLayoutConstraint activateConstraints:
     @[
       [warning.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor],
       [warning.centerYAnchor constraintEqualToAnchor:self.view.centerYAnchor],
       [warning.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor],
       [warning.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor],
       ]];
    [self internetConnection];
}

- (void)internetConnection {
    NSURL *url = [[NSURL alloc] initWithString:@"https://www.google.com"];
    NSURLSession *session = [NSURLSession sharedSession];
    NSURLSessionDataTask *task = [session dataTaskWithURL:url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        NSLog(@"aaa");
        if (response) {
            dispatch_async(dispatch_get_main_queue(), ^{
                [self connectionAvalible];
            });
        } else {
            dispatch_async(dispatch_get_main_queue(), ^{
                [self connectionDenide];
            });
        }
        
    }];
    [task resume];
}

- (void)connectionAvalible{
        RootTableViewController *rootTableVC = [[RootTableViewController alloc] init];
        rootTableVC.data = [[DataSource alloc] init].images;
    [self.navigationController pushViewController:rootTableVC animated:YES];
}
- (void)connectionDenide{
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"NO INTERNET CONNECTION" message:@"Please establish internet connection and relaunch app" preferredStyle:UIAlertControllerStyleAlert];
    [self presentViewController:alert animated:YES completion:nil];
}
@end
