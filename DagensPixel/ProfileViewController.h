//
//  ProfileViewController.h
//  DagensPixel
//
//  Created by Viktor Söderman on 2/25/13.
//  Copyright (c) 2013 LightStyle. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "CoreData/CoreData.h"
@interface ProfileViewController : UIViewController <UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, UINavigationControllerDelegate, UIImagePickerControllerDelegate, NSFetchedResultsControllerDelegate>
{

    IBOutlet UIScrollView *scroller;
    
}

@property (nonatomic) int item;
@property (nonatomic) int collectionSize;
@property (nonatomic) int scrollerSize;
@property (strong, nonatomic) UIImageView * imageView;
@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;



@property (weak, nonatomic) IBOutlet UICollectionView *collection;
- (IBAction)addPic:(id)sender;

@end
