//
//  main.m
//  LearnObjectiveCCode
//
//  Created by David Dvergsten on 10/24/13.
//  Copyright (c) 2013 Ian And David Dvergsten. All rights reserved.
//

#import <Cocoa/Cocoa.h>
//#import "Tire.h"
#import "Car.h"
#import "Slant6.h"
#import "AllWeatherRadial.h"
int main(int argc, const char * argv[])
{
    Car *car = [[Car alloc]init];
    int i;
    Tire *tire;
    tire = [[Tire alloc] init];
    for(i = 0; i<4;i++){
        AllWeatherRadial   *awrtire;
        awrtire = [[AllWeatherRadial alloc ] initWithPressure:32.3  treadDepth:32.3];
        awrtire.rainHandling = 5.2;
        [tire setPressure:23 + i];
        [tire setTreadDepth:33-i];
        
        [car setTire: tire
             atIndex:i];
        
        
    }
    Engine  *engine = [[Slant6 alloc] init];
    [car setEngine:engine];
    [car print];
    
    return 0;
}
