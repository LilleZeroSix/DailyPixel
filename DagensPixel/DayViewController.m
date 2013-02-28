//
//  FirstViewController.m
//  DagensPixel
//
//  Created by Viktor Söderman on 2/14/13.
//  Copyright (c) 2013 LightStyle. All rights reserved.
//

#import "DayViewController.h"

@interface DayViewController ()

@end

@implementation DayViewController

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    self.view.layer.shadowOpacity = 0.75f;
    self.view.layer.shadowRadius = 10.0f;
    self.view.layer.shadowColor = [UIColor blackColor].CGColor;
    
    NSLog(@"slidingView: %@", self.slidingViewController);
    
    if (![self.slidingViewController.underLeftViewController isKindOfClass:[MonthViewController class]]){
        self.slidingViewController.underLeftViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"Month"];
    }
    if (![self.slidingViewController.underRightViewController isKindOfClass:[WeekViewController class]]) {
        self.slidingViewController.underRightViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"Week"];
    }
    
    [self.view addGestureRecognizer:self.slidingViewController.panGesture];
}



- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //[self.view setBackgroundColor:[UIColor PixelColor]];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)MonthButton:(id)sender {
    
    [self.slidingViewController anchorTopViewTo:ECRight];
}

- (IBAction)WeekButton:(id)sender {
    
    [self.slidingViewController anchorTopViewTo:ECLeft];
}
@end
