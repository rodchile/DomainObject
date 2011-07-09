//
//  Status.m
//  DomainObject
//
//  Created by Rodrigo Garcia on 7/8/11.
//  Copyright 2011 Excelsys Soluciones SpA. All rights reserved.
//

#import "Status.h"

@implementation Status
@synthesize createdAt = _createdAt;
@synthesize isFavorited = _isFavorited;
@synthesize statusID = _statusID;
@synthesize inReplyToScreenName = _inReplyToScreenName;
@synthesize tweet = _tweet;
@synthesize urlString = _urlString;

- (id)init
{
    self = [super init];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}

- (void)dealloc{
    [_statusID release];
    [_createdAt release];
    [_tweet release];
    [_urlString release];
    [_inReplyToScreenName release];
    [_isFavorited release];
}

@end
