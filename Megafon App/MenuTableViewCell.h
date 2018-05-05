//
//  MenuTableViewCell.h
//  Megafon App
//
//  Created by whoami on 5/5/18.
//  Copyright © 2018 Mountain Viewer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MenuTableViewCell : UITableViewCell

@property (strong, nonatomic) NSString *imageName;
@property (strong, nonatomic) NSString *alternativeImageName;
@property (weak, nonatomic) IBOutlet UILabel *cellLabel;
@property (weak, nonatomic) IBOutlet UIImageView *cellImageView;

@end
