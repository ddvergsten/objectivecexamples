//
//  Car.h
//  LearnObjectiveCCode
//
//  Created by David Dvergsten on 10/24/13.
//  Copyright (c) 2013 Ian And David Dvergsten. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Tire;
@class Engine;
@interface Car : NSObject
{
    NSMutableArray  *tires;
    Engine *engine;
}
-(void)setEngine:(Engine *) newEngine;
-(Engine *) engine;
-(void) setTire:(Tire *) tire
        atIndex:(int) index;

-(Tire *)tireAtIndex: (int)index;
-(void)print;
@end
