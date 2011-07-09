//
//  DomainObjectViewController.h
//  DomainObject
//
//  Created by Rodrigo Garcia on 7/8/11.
//  Copyright 2011 Excelsys Soluciones SpA. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RestKit/RestKit.h"


@interface DomainObjectViewController : UIViewController<RKObjectLoaderDelegate>{
   	NSArray* _statuses;
    IBOutlet UILabel *tweetsSize;
    IBOutlet UILabel *lastTweet;
}

@property(nonatomic,retain) IBOutlet UILabel *tweetsSize;
@property(nonatomic,retain) IBOutlet UILabel *lastTweet;

@end
