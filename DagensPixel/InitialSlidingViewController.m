//
//  InitialSlidingViewController.m
//  DagensPixel
//
//  Created by Emily Elmseld on 2013-03-04.
//  Copyright (c) 2013 LightStyle. All rights reserved.
//

#import "InitialSlidingViewController.h"


@interface InitialSlidingViewController ()

@end

@implementation InitialSlidingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIStoryboard *storyboard;
    
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone) {
        storyboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
    } else if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad) {
        storyboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
    }
    
    self.topViewController = [storyboard instantiateViewControllerWithIdentifier:@"Day"];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
{
  return YES;
}

@end
