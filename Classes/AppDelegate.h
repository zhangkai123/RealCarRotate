//
//  AppDelegate.h
//  Unity-iPhone
//
//  Created by zhang kai on 7/7/13.
//
//

#import "AppController.h"
#import "RCRootViewController.h"

@interface AppDelegate : AppController
{
    RCRootViewController *rootViewController;
}
@property(nonatomic,retain) RCRootViewController *rootViewController;
@end
