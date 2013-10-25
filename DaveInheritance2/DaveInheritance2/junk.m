//
//  junk.m
//  DaveInheritance2
//
//  Created by David Dvergsten on 8/14/13.
//  Copyright (c) 2013 Ian And David Dvergsten. All rights reserved.
//

#import "junk.h"

#import <Foundation/Foundation.h>

//@implementation junk

//@end

@interface Vehicle : NSObject
{
    int engine;
}
-(void)startEngine;
-(void)drive;
-(void)setId:(int) engine;
@end
@interface Truck : Vehicle
{
    
}
-(void)pullTrailer;

@end
@interface Car : Vehicle
{
    
}
-(void)openTrunk;
@end
@implementation Truck

-(void)pullTrailer
{
    NSLog(@"pulling trailer");
}


@end

@implementation Car
-(void)openTrunk
{
    NSLog(@"opened trunk");
}
@end

@implementation Vehicle
-(void )startEngine
{
    NSLog(@"started engine");
    
}
-(void)drive
{
    NSLog(@"driving car");
}

-(void)setId:(int)e
{
    NSLog(@"setting engine id %d", e);
    engine = e;
}
@end

int main(int argc, const char * argv[])
{
    id v;
    v = [Vehicle new];
    [v startEngine];
    id car;
    car = [Car new];
    [car openTrunk];
    id truck;
    truck = [Truck new];
    [truck pullTrailer];
    [truck setId:(4)];
    return 0;
}