//
//  LSService.m
//  CleanArchitecture
//
//  Created by Luis Solano Bonet on 17/01/13.
//  Copyright (c) 2013 Luis Solano Bonet. All rights reserved.
//

#import "LSService.h"

@implementation LSService

- (void)start {
    [NSException raise:NSInternalInconsistencyException format:@"abstract method"];
}

- (void)applicationDidFinishLaunching:(UIApplication *)application {
    
}
- (void)applicationDidEnterBackground:(UIApplication *)application {
    
}
- (void)applicationDidBecomeActive:(UIApplication *)application {
    
}
- (void)applicationWillEnterForeground:(UIApplication *)application {
    
}
- (void)applicationWillTerminate:(UIApplication *)application {
    
}
@end
