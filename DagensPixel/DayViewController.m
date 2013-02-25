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

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.view setBackgroundColor:[UIColor PixelColor]];
    
	UIViewController* leftController = [[UIViewController alloc] init];
    UIViewController* rightController = [[UIViewController alloc] init];
    
    IIViewDeckController* FirstViewController =  [[IIViewDeckController alloc] initWithCenterViewController:self.centerController leftViewController:leftController
                                                                                   rightViewController:rightController];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
