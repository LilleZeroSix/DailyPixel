//
//  PictureViewController.h
//  DagensPixel
//
//  Created by Viktor Söderman on 3/14/13.
//  Copyright (c) 2013 LightStyle. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PictureViewController : UIViewController <UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout>

@property (strong, nonatomic) UIImageView * imageView;
@property (weak, nonatomic) IBOutlet UICollectionView *collection;

@end
