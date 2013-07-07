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
    [[super getWindow] addSubview:rootViewController.view];
    
    return rValue;
}

@end
