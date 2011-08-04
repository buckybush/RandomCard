
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class FlipCardViewController;

@interface CardView : UIView {
    FlipCardViewController *viewController;
}

@property (nonatomic,assign) FlipCardViewController *viewController;

@end
