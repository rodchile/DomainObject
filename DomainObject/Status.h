//
//  Status.h
//  DomainObject
//
//  Created by Rodrigo Garcia on 7/8/11.
//  Copyright 2011 Excelsys Soluciones SpA. All rights reserved.
//



@interface Status : NSObject {
	NSNumber* _statusID;
	NSDate* _createdAt;
	NSString* _tweet;
	NSString* _urlString;
	NSString* _inReplyToScreenName;
	NSNumber* _isFavorited;	
}

@property(nonatomic,retain) NSNumber* statusID;
@property(nonatomic,retain) NSDate* createdAt;
@property(nonatomic,retain) NSString *tweet;
@property(nonatomic,retain) NSString *urlString;
@property(nonatomic,retain) NSString *inReplyToScreenName;
@property(nonatomic,retain) NSNumber *isFavorited;

@end
