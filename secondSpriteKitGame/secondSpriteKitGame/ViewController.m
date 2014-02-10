//
//  ViewController.m
//  secondSpriteKitGame
//
//  Created by David Dvergsten on 1/30/14.
//  Copyright (c) 2014 Ian And David Dvergsten. All rights reserved.
//

#import "ViewController.h"
#import "MyScene.h"

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [[UIAccelerometer sharedAccelerometer]setUpdateInterval:(1/40.0)];
    [[UIAccelerometer sharedAccelerometer]setDelegate:self ];
    redBox   = [[UIView alloc] initWithFrame:CGRectMake(110, 180, 100, 100)];
    redBox.backgroundColor = [UIColor redColor];
    [self.view addSubview:redBox];

    // Configure the view.
    SKView * skView = (SKView *)self.view;
    skView.showsFPS = YES;
    skView.showsNodeCount = YES;
    
    // Create and configure the scene.
    SKScene * scene = [MyScene sceneWithSize:skView.bounds.size];
    scene.scaleMode = SKSceneScaleModeAspectFill;
    
    // Present the scene.
    [skView presentScene:scene];
}
-(void) moveBoxWithX:(float)xAmount andY:(float)yAmount
{
    CGPoint boxCenter = redBox.center;
    boxCenter.x += xAmount;
    boxCenter.y += yAmount;
    if(boxCenter.x < 50)
        boxCenter.x = 50.0;
    if(boxCenter.x > 270.0)
        boxCenter.x = 270.0;
    
    if(boxCenter.y < 50)
        boxCenter.y = 50.0;
    if(boxCenter.y > 270.0)
        boxCenter.y = 270.0;
    
    redBox.center = boxCenter;
    
}
-(void)accelerometer:(UIAccelerometer *)accelerometer didAccelerate:(UIAcceleration *)acceleration
{
    float sensitivity = 25.0f;
    float xDistance = acceleration.x * sensitivity;
    float yDistance = acceleration.y * -sensitivity;
    [self moveBoxWithX:xDistance andY:yDistance];
}
- (BOOL)shouldAutorotate
{
    return YES;
}

- (NSUInteger)supportedInterfaceOrientations
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return UIInterfaceOrientationMaskAllButUpsideDown;
    } else {
        return UIInterfaceOrientationMaskAll;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

@end
