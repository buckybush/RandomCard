//
//  FlipCardViewController.h
//  FlipCard
//
//  Created by Bucky Bush on 8/4/11.
//  Copyright 2011 Northwest GA RESA. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FlipCardViewController : UIViewController{
    int cardFlipped;
}
@property (nonatomic, retain) IBOutlet UIImageView *cardView;
@property (nonatomic, retain) IBOutlet UIButton *flipper;

- (IBAction)buttonPressed:(id)sender;
- (void) disableUserInteraction;
- (void) enableUserInteraction;

@end