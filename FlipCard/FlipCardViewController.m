//
//  FlipCardViewController.m
//  FlipCard
//
//  Created by Bucky Bush on 8/4/11.
//  Copyright 2011 Northwest GA RESA. All rights reserved.
//

#import "FlipCardViewController.h"

@implementation FlipCardViewController
@synthesize cardView, flipper;

- (void) disableUserInteraction {
    [flipper setUserInteractionEnabled:NO];
}

-(void)enableUserInteraction{
    [flipper setUserInteractionEnabled:YES];
}     

-(IBAction)buttonPressed:(id)sender{
    if (cardFlipped == 0) {
        [self disableUserInteraction];
        
        int flipCardDuration = 1;
        [UIView beginAnimations:nil context:nil];
        [UIView setAnimationDuration:flipCardDuration];
        [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft 
                               forView:cardView 
                                 cache:YES];
        
        int rand = (arc4random() % 52)+1;
        
        NSString *randomCard = [NSString stringWithFormat:@"%i.png", rand];
        
        UIImage *front = [UIImage imageNamed:randomCard];
        [cardView setImage:front];

        [UIView commitAnimations];
        
        [self performSelector:@selector(enableUserInteraction) withObject:nil afterDelay:flipCardDuration];
        
        cardFlipped = 1;
        
    } else if (cardFlipped == 1) {
        [self disableUserInteraction];
        int flipBackDuration = 1;
        [UIView beginAnimations:nil context:nil];
        [UIView setAnimationDuration:flipBackDuration];
        [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft 
                               forView:cardView 
                                 cache:YES];
        
        UIImage *back = [UIImage imageNamed:@"back.png"];
        [cardView setImage:back];
        [UIView commitAnimations];
        [self performSelector:@selector(enableUserInteraction) withObject:nil afterDelay:flipBackDuration];
        cardFlipped = 0;
    }
}


#pragma mark - Apple

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    cardFlipped = 0;
    
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
    [cardView release];
    cardView = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
