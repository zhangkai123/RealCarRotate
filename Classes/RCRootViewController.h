//
//  RCRootViewController.h
//  Unity-iPhone
//
//  Created by zhang kai on 7/7/13.
//
//

#import <UIKit/UIKit.h>

@protocol RCRootViewControllerDelegate <NSObject>

-(void)goToCarModel:(NSString *)carM;

@end

@interface RCRootViewController : UIViewController
{
    NSMutableArray *carArray;
    __unsafe_unretained id<RCRootViewControllerDelegate> delegate;
}
@property(nonatomic,retain) NSMutableArray *carArray;
@property(nonatomic,unsafe_unretained) id<RCRootViewControllerDelegate> delegate;
@end
