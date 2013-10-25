//
//  Tire.m
//  LearnObjectiveCCode
//
//  Created by David Dvergsten on 10/24/13.
//  Copyright (c) 2013 Ian And David Dvergsten. All rights reserved.
//

#import "Tire.h"

@implementation Tire
-(id)init
{
    if(self = [super init]){
        pressure = 34.0;
        treadDepth = 20.0;
    }
    return self;
}
-(void)setPressure:(float)p
{
    pressure = p;
}
-(float)pressure
{
    return (pressure);
}
-(void)setTreadDepth:(float)td
{
    treadDepth = td;
}
-(float)treadDepth
{
    return (treadDepth);
}

-(NSString *)description
{
    NSString *desc;
    desc = [NSString stringWithFormat:@"Tire: Pressure: %.1f TreadDepth: %.1f",
            pressure, treadDepth];
    return (desc);
}
@end
