//
//  AppDelegate.m
//  Task3
//
//  Created by Roma on 6/17/19.
//  Copyright © 2019 Roman. All rights reserved.
//

#import "AppDelegate.h"
#import "RootTableViewController.h"
#import "DataSource.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:UIScreen.mainScreen.bounds];
    RootTableViewController *rootTableVC = [[RootTableViewController alloc] init];
    rootTableVC.data = [[DataSource alloc] init].images;
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:rootTableVC];
    [self.window setRootViewController:navigationController];
    [self.window makeKeyAndVisible];
    
    return YES;
}




@end
