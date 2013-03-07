//
//  ProfileViewController.h
//  DagensPixel
//
//  Created by Viktor Söderman on 2/25/13.
//  Copyright (c) 2013 LightStyle. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ProfileViewController : UIViewController <UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout>
{

    IBOutlet UIScrollView *scroller;
    
}

@property (nonatomic) int item;
@property (nonatomic) int collectionSize;
@property (nonatomic) int scrollerSize;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollerView;

@property (weak, nonatomic) IBOutlet UICollectionView *collection;
- (IBAction)addPic:(id)sender;

@end
