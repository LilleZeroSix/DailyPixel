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
    [scroller setContentSize:CGSizeMake(320, _scrollerSize)];
    [_collection setFrame:CGRectMake(20, 200, 280, _collectionSize)];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    _item = 30;
    
    float numberOfItems = ceil(_item/3.0);
    
    NSLog(@"numberOfItems: %f", numberOfItems);
    
    _collectionSize = numberOfItems*90;
    _scrollerSize = _collectionSize+206;
    
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"CollectionCell" forIndexPath:indexPath];
    
    float red = ( arc4random()%255 + 1)/255.0;
    float green = ( arc4random()%255 + 1)/255.0;
    float blue = ( arc4random()%255 + 1)/255.0;
    
    cell.backgroundColor = [UIColor  colorWithRed:red green:green blue:blue alpha:1.0];
    
    self.imageView = [[UIImageView alloc] init];
    [self.imageView setFrame:CGRectMake(0, 0, 100, 100)];
    
    [cell.contentView addSubview:self.imageView];
    
    
    return cell;
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return _item;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return CGSizeMake(80, 80);
    //size = 90
    //item = 30
    //(30/3)90=collectionSize
    //collectionSize+206;
    
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
