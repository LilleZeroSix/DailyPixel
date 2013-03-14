//
//  WeekViewController.m
//  DagensPixel
//
//  Created by Emily Elmseld on 2013-02-14.
//  Copyright (c) 2013 LightStyle. All rights reserved.
//

#import "WeekViewController.h"

@interface WeekViewController ()

@end

@implementation WeekViewController

//- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
//{
//    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
//    if (self) {
//        // Custom initialization
//    }
//    return self;
//}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.peekRightAmount = 40.0f;
    [self.slidingViewController setAnchorRightPeekAmount:self.peekRightAmount];
    self.slidingViewController.underLeftWidthLayout = ECVariableRevealWidth;
    
    [self.view setBackgroundColor:[UIColor PixelColor]];
	// Do any additional setup after loading the view.
    
    [self.weekPic setImage: [UIImage imageNamed:@"nalle.jpg"]];
    
     }

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

     

@end
