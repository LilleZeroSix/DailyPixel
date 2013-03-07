//
//  FirstViewController.h
//  DagensPixel
//
//  Created by Viktor Söderman on 2/14/13.
//  Copyright (c) 2013 LightStyle. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
#import "ECSlidingViewController.h"
#import "WeekViewController.h"
#import "MonthViewController.h"

@interface DayViewController : UIViewController 
- (IBAction)MonthButton:(id)sender;
- (IBAction)WeekButton:(id)sender;
@property (weak, nonatomic) IBOutlet UIImageView *DagensBildPic;

@end
