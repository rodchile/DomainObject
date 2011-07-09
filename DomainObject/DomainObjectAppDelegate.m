//
//  DomainObjectAppDelegate.m
//  DomainObject
//
//  Created by Rodrigo Garcia on 7/8/11.
//  Copyright 2011 Excelsys Soluciones SpA. All rights reserved.
//

#import "RestKit/RestKit.h"
#import "DomainObjectAppDelegate.h"
#import "DomainObjectViewController.h"
#import "Status.h"

@implementation DomainObjectAppDelegate


@synthesize window=_window;

@synthesize viewController=_viewController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    RKObjectManager* objectManager = [RKObjectManager objectManagerWithBaseURL:@"http://twitter.com"];
    RKObjectMapping* statusMapping = [RKObjectMapping mappingForClass:[Status class]];
    
    [statusMapping mapKeyPathsToAttributes:@"id", @"statusID",
     @"created_at", @"createdAt",
     @"text", @"tweet",
     @"url", @"urlString",
     @"in_reply_to_screen_name", @"inReplyToScreenName",
     @"favorited", @"isFavorited",
     nil];
    
    [statusMapping.dateFormatStrings addObject:@"E MMM d HH:mm:ss Z y"];

    [objectManager.mappingProvider setObjectMapping:statusMapping forKeyPath:@"status"];
    
    // Override point for customization after application launch.
     
    self.window.rootViewController = self.viewController;
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
     */
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    /*
     Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
     */
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    /*
     Called when the application is about to terminate.
     Save data if appropriate.
     See also applicationDidEnterBackground:.
     */
}

- (void)dealloc
{
    [_window release];
    [_viewController release];
    [super dealloc];
}

@end
