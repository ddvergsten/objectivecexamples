//
//  Car.m
//  LearnObjectiveCCode
//
//  Created by David Dvergsten on 10/24/13.
//  Copyright (c) 2013 Ian And David Dvergsten. All rights reserved.
//

#import "Car.h"
#import "Engine.h"

@implementation Car
-(id)init
{
    if(self = [super init]){
        tires = [[NSMutableArray alloc] init];
        int i;
        for(i=0;i<4;i++){
            [tires addObject:[NSNull null]];
        }
    }
    return (self);
}
-(void)setEngine:(Engine *)newEngine
{
    [newEngine retain];
    [engine release];
    engine = newEngine;
}
-(Engine *)engine
{
    return (engine);
}
-(void)setTire:(Tire *)tire atIndex:(int)index
{
    [tires replaceObjectAtIndex:index withObject:tire];
}
-(Tire *)tireAtIndex:(int)index
{
    Tire *tire;
    tire = [tires objectAtIndex:index];
    return (tire);
}
- (void) print
{
    int i;
    for (i = 0; i < 4; i++) {
        NSLog (@"%@", [self tireAtIndex: i]);
    }
    
    NSLog (@"%@", engine);
    
} // print

-(void)dealloc
{
    [tires release];
    [engine release];
    
    [super dealloc];
}
@end
