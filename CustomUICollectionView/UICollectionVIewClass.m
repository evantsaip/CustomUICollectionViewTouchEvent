//
//  UICollectionVIewClass.m
//  CustomUICollectionView
//
//  Created by lalaleelala on 3/13/16.
//  Copyright © 2016 lalaleelala. All rights reserved.
//

#import "UICollectionVIewClass.h"

@implementation UICollectionVIewClass

/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void)drawRect:(CGRect)rect {
 // Drawing code
 }
 */
- (void)awakeFromNib {
    myArray = [NSArray arrayWithObjects:@"Evan",@"Tank",@"Sean",@"Eric", nil] ;
    [_myCollectionView registerNib:[UINib nibWithNibName:@"UICollectionViewCustomizedCellXib" bundle:nil] forCellWithReuseIdentifier:@"UICollectionViewCustomizedCellXib"];
}


//Create CollectionView
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return myArray.count;
}

- (UICollectionViewCell*) collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCustomizedCell * cell = (UICollectionViewCustomizedCell*) [collectionView dequeueReusableCellWithReuseIdentifier:@"UICollectionViewCustomizedCellXib" forIndexPath:indexPath];
    [cell loadCell:myArray[indexPath.row]];
    
    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    UICollectionViewCustomizedCell *cell = (UICollectionViewCustomizedCell*)[collectionView cellForItemAtIndexPath:indexPath];
    NSLog(@"%@",cell.cellCenterLabel);

    
}
@end
