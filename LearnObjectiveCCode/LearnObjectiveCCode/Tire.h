//
//  Tire.h
//  LearnObjectiveCCode
//
//  Created by David Dvergsten on 10/24/13.
//  Copyright (c) 2013 Ian And David Dvergsten. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Tire : NSObject
{
    float pressure;
    float treadDepth;
}
-(void)setPressure:(float)pressure;
-(float)pressure;

-(void)setTreadDepth: (float)treadDepth;
-(float)treadDepth;


@end
