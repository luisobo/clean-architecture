//
//  LSAppDelegate.m
//  CleanArchitecture
//
//  Created by Luis Solano Bonet on 14/01/13.
//  Copyright (c) 2013 Luis Solano Bonet. All rights reserved.
//

#import "LSAppDelegate.h"

#import "LSActivateRegisterViewController.h"
#import "LSServiceManager.h"
#import "LSLocalyticsService.h"

@interface LSAppDelegate ()
- (void)registerServices;
@end

@implementation LSAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    [self registerServices];
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.

    UIViewController *viewController = [[LSActivateRegisterViewController alloc] initWithNibName:@"LSActivateRegisterViewController" bundle:nil];
    self.navigationViewController = [[UINavigationController alloc] initWithRootViewController:viewController];
    
    self.window.rootViewController = self.navigationViewController;
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)registerServices {
    LSServiceManager *serviceManager = [LSServiceManager sharedInstance];
    
    LSService *localytics = [[LSLocalyticsService alloc] init];
    [serviceManager registerService:localytics];
    
    [serviceManager start];
}

@end
