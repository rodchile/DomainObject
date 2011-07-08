//
//  DomainObjectAppDelegate.h
//  DomainObject
//
//  Created by Rodrigo Garcia on 7/8/11.
//  Copyright 2011 Excelsys Soluciones SpA. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DomainObjectViewController;

@interface DomainObjectAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet DomainObjectViewController *viewController;

@end
