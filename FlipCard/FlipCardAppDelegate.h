//
//  FlipCardAppDelegate.h
//  FlipCard
//
//  Created by Bucky Bush on 8/4/11.
//  Copyright 2011 Northwest GA RESA. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FlipCardViewController;

@interface FlipCardAppDelegate : NSObject <UIApplicationDelegate>

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet FlipCardViewController *viewController;

@end
