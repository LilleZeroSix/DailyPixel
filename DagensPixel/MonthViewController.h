//
//  MonthViewController.h
//  DagensPixel
//
//  Created by Emily Elmseld on 2013-02-14.
//  Copyright (c) 2013 LightStyle. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ECSlidingViewController.h"

@interface MonthViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *monthPic;
@property (nonatomic) CGFloat peekLeftAmount;

@end
