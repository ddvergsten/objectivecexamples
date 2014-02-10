#import <Foundation/Foundation.h>
#import "Tire.h"

@interface AllWeatherRadial : Tire {
    float rainHandling;
    float snowHandling;
}

@property float rainHandling;
@property float snowHandling;
-(id) initWithPressure: (float) p
treadDepth: (float) td;
//- (void) setRainHandling: (float) rainHanding;
//- (float) rainHandling;
//
//- (void) setSnowHandling: (float) snowHandling;
//- (float) snowHandling;

@end // AllWeatherRadial
