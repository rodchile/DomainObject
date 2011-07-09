//
//  DomainObjectViewController.m
//  DomainObject
//
//  Created by Rodrigo Garcia on 7/8/11.
//  Copyright 2011 Excelsys Soluciones SpA. All rights reserved.
//

#import "DomainObjectViewController.h"

@implementation DomainObjectViewController
@synthesize lastTweet;
@synthesize tweetsSize;

-(void)LoadTimeLine{
    RKObjectManager *objectManager = [RKObjectManager sharedManager];
    [objectManager client].baseURL = @"http://www.twitter.com";
    RKObjectMapping* statusMapping = nil;
    
    if ([objectManager.acceptMIMEType isEqualToString:RKMIMETypeJSON]) {
        statusMapping = [objectManager.mappingProvider objectMappingForKeyPath:@"status"];
    }
    
    [objectManager loadObjectsAtResourcePath:@"/status/user_timeline/rodchile" objectMapping:statusMapping delegate:self];
}

#pragma mark RKObjectLoaderDelegate methods

- (void)request:(RKRequest*)request didLoadResponse:(RKResponse*)response {
    //NSLog(@"Loaded payload: %@", [response bodyAsString]);
}

- (void)objectLoader:(RKObjectLoader*)objectLoader didLoadObjects:(NSArray*)objects {
	//NSLog(@"Loaded statuses: %@", objects);    
	[_statuses release];
	_statuses = [objects retain];
    tweetsSize.text = [NSString stringWithFormat:@"%d", [_statuses count]];
    lastTweet.text = [[_statuses objectAtIndex:0] tweet];
    //NSLog(@"_statuses lenght: %d", [_statuses count]);
}

- (void)objectLoader:(RKObjectLoader*)objectLoader didFailWithError:(NSError*)error{
    NSLog(@"Hit error");
}

- (void)dealloc
{
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
}

#pragma mark - View lifecycle


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
    [self LoadTimeLine];
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
