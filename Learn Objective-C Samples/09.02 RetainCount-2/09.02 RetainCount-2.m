#import <Foundation/Foundation.h>

@interface RetainTracker : NSObject
@end // RetainTracker

@implementation RetainTracker

- (id) init
{
	if (self = [super init]) {
		NSLog (@"init: Retain count of %d.",
			   [self retainCount]);
	}
	
	return (self);
	
} // init


- (void) dealloc
{
	NSLog (@"dealloc called. Bye Bye.");
	[super dealloc];
	
} // dealloc

@end // RetainTracker


int main (int argc, const char * argv[])
{
    NSAutoreleasePool *pool;
    pool = [[NSAutoreleasePool alloc] init];
	
//    RetainTracker *tracker;
//    tracker = [RetainTracker new]; // count: 1
//	
//    [tracker retain]; // count: 2
//    [tracker retain];
//    [tracker autorelease]; // count: still 2
//    
//    //[tracker release]; // count: 1
//	[tracker release];
//    [tracker release];
//    [tracker release ];
    NSMutableArray  *array;
    array = [[NSMutableArray alloc] init];
    //[array release];
    [array addObject:@"hello"];
    [array retain];
    [array autorelease];
    [array release];
    NSLog (@"releasing pool");
    [pool release];
    // gets nuked, sends release to tracker
	
    return (0);
}
