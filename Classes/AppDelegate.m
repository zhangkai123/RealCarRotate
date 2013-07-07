//
//  AppDelegate.m
//  Unity-iPhone
//
//  Created by zhang kai on 7/7/13.
//
//

#import "AppDelegate.h"

@implementation AppDelegate
@synthesize rootViewController;

- (BOOL)application:(UIApplication*)application didFinishLaunchingWithOptions:(NSDictionary*)launchOptions
{
    BOOL rValue = [super application:application didFinishLaunchingWithOptions:launchOptions];
    
    [[super getViewController] view].hidden = YES;
    rootViewController = [[RCRootViewController alloc]init];
    rootViewController.delegate = self;
    [[super getWindow] addSubview:rootViewController.view];
    
    return rValue;
}
-(void)goToCarModel:(NSString *)carM
{
    const char *carModel = [carM UTF8String];
    UnitySendMessage("scene", "Test", carModel);

    [[super getWindow] bringSubviewToFront:rootViewController.view];
    [[super getViewController] view].hidden = NO;
    [UIView animateWithDuration:0.6 animations:^{
        rootViewController.view.frame = CGRectMake(-320, 0, 320, 480);
    } completion:^(BOOL finished){
//        [[super getViewController] view].hidden = NO;
    }];
}
@end
