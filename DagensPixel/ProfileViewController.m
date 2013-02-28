//
//  ProfileViewController.m
//  DagensPixel
//
//  Created by Viktor Söderman on 2/25/13.
//  Copyright (c) 2013 LightStyle. All rights reserved.
//

#import "ProfileViewController.h"

@interface ProfileViewController ()

@end

@implementation ProfileViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
 
    [scroller setScrollEnabled:YES];
    [scroller setContentSize:CGSizeMake(320, 2000)];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    UIImageView *myView = [[UIImageView alloc] initWithFrame:CGRectMake(20, 190, 80, 80)];
    UIImageView *myView1 = [[UIImageView alloc] initWithFrame:CGRectMake(120, 190, 80, 80)];
    UIImageView *myView2 = [[UIImageView alloc] initWithFrame:CGRectMake(220, 190, 80, 80)];
    [myView setBackgroundColor:[UIColor blueColor]];
    [scroller addSubview:myView];
    [myView1 setBackgroundColor:[UIColor blueColor]];
    [scroller addSubview:myView1];
    [myView2 setBackgroundColor:[UIColor blueColor]];
    [scroller addSubview:myView2];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)addPic:(id)sender
{
    UIImagePickerController *imagePicker = [[UIImagePickerController alloc] init];
    
    if([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera])
    {
        [imagePicker setSourceType:UIImagePickerControllerSourceTypeCamera];
    } else {
        [imagePicker setSourceType:UIImagePickerControllerSourceTypePhotoLibrary];
    }
    
    [imagePicker setDelegate:self];
    
    [self presentViewController:imagePicker animated:YES completion:nil];
    
}


-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    NSLog(@"info: %@", info);
    
    
    
    [self dismissViewControllerAnimated:YES completion:^{
        [self.imageView setImage:[info objectForKey:UIImagePickerControllerOriginalImage]];
    }];
}
@end
