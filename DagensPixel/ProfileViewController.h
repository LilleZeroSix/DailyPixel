//
//  ProfileViewController.h
//  DagensPixel
//
//  Created by Viktor Söderman on 2/25/13.
//  Copyright (c) 2013 LightStyle. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ProfileViewController : UIViewController <UINavigationControllerDelegate, UIImagePickerControllerDelegate>
{

IBOutlet UIScrollView *scroller;
    
}

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollerView;

- (IBAction)addPic:(id)sender;

@end
