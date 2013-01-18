//
//  LSService.h
//  CleanArchitecture
//
//  Created by Luis Solano Bonet on 17/01/13.
//  Copyright (c) 2013 Luis Solano Bonet. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LSService : NSObject

- (void)start;
- (void)applicationDidFinishLaunching:(UIApplication *)application;
- (void)applicationDidEnterBackground:(UIApplication *)application;
- (void)applicationDidBecomeActive:(UIApplication *)application;
- (void)applicationWillEnterForeground:(UIApplication *)application;
- (void)applicationWillTerminate:(UIApplication *)application;

@end
