//
//  MyScene.m
//  secondSpriteKitGame
//
//  Created by David Dvergsten on 1/30/14.
//  Copyright (c) 2014 Ian And David Dvergsten. All rights reserved.
//

#import "MyScene.h"
int flip = 0;

@implementation MyScene
{
    SKSpriteNode *ship;
}


-(id)initWithSize:(CGSize)size {
    
    [[UIAccelerometer sharedAccelerometer]setUpdateInterval:(1/40.0)];
    [[UIAccelerometer sharedAccelerometer]setDelegate:self ];
    if (self = [super initWithSize:size]) {
        /* Setup your scene here */
        
        self.backgroundColor = [SKColor colorWithRed:0.15 green:0.15 blue:0.3 alpha:1.0];
        
        SKLabelNode *myLabel = [SKLabelNode labelNodeWithFontNamed:@"Chalkduster"];
        
        myLabel.text = @"Dave is awsome!!!";
        myLabel.fontSize = 30;
        myLabel.position = CGPointMake(CGRectGetMidX(self.frame),
                                       CGRectGetMidY(self.frame));
        
        [self addChild:myLabel];
    }
    return self;
}
////////////////////////////////////
-(void) moveBoxWithX:(float)xAmount andY:(float)yAmount
{
    //this is a test
    CGPoint shipCenter = ship.position;
    shipCenter.x += xAmount;
    shipCenter.y += yAmount;
    if(shipCenter.x < 50)
        shipCenter.x = 50.0;
    if(shipCenter.x > 270.0)
        shipCenter.x = 270.0;
    
    if(shipCenter.y < 10)
        shipCenter.y = 10.0;
    if(shipCenter.y > 570.0)
        shipCenter.y = 570.0;
    
    ship.position = shipCenter;
    
}
-(void)accelerometer:(UIAccelerometer *)accelerometer didAccelerate:(UIAcceleration *)acceleration
{
    float sensitivity = 25.0f;
    float xDistance = acceleration.x * sensitivity;
    float yDistance = acceleration.y * sensitivity;
    [self moveBoxWithX:xDistance andY:yDistance];
}
/////////////////////


-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    /* Called when a touch begins */
    UITouch *touch = [touches anyObject];
    CGPoint location = [touch locationInNode:self];
    if(!ship)
    {
        ship = [SKSpriteNode spriteNodeWithImageNamed:@"Spaceship"];
        ship.position = location;
        [self addChild:ship];
        SKEmitterNode *emitter = [NSKeyedUnarchiver
                                  unarchiveObjectWithFile:[[NSBundle mainBundle]
                                                           pathForResource:@"exhaust" ofType:@"sks"]];
        emitter.position = CGPointMake(0.0, -ship.size.height / 2.0);
        [ship addChild:emitter];
        emitter.targetNode = self;
    }
    else{
        //
        ship.position    = location ;
        
    }
}
-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event{
    UITouch *touch = [touches anyObject];
    ship.position = [touch locationInNode:self];
}

-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
}

@end
