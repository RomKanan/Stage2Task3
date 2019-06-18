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
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:UIScreen.mainScreen.bounds];
    ViewController *defaultViewController = [ViewController new];
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:defaultViewController];
    [self.window setRootViewController:navigationController];
    [self.window makeKeyAndVisible];
    
 
    
    return YES;
}





@end
