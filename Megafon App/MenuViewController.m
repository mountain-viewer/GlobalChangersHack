//
//  MenuViewController.m
//  Megafon App
//
//  Created by whoami on 5/5/18.
//  Copyright © 2018 Mountain Viewer. All rights reserved.
//

#import "MenuViewController.h"
#import "MenuTableViewCell.h"

@interface MenuViewController ()

@property (weak, nonatomic) IBOutlet UITableView *menuTableView;

@end

@implementation MenuViewController

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 6;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *CellIdentifier = @"Cell";
    
    MenuTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    if (indexPath.row == 0) {
        cell.cellLabel.text = @"Новый граф";
        cell.cellLabel.font = [UIFont fontWithName:@"AvenirNext-Regular" size:18];
        cell.cellLabel.textColor = [UIColor whiteColor];
        cell.imageName = @"new_white";
        cell.alternativeImageName = @"new_white";
        cell.cellImageView.image = [UIImage imageNamed:cell.imageName];
    } else if (indexPath.row == 1) {
        cell.cellLabel.text = @"Мои графы";
        cell.cellLabel.font = [UIFont fontWithName:@"AvenirNext-Regular" size:18];
        cell.cellLabel.textColor = [UIColor whiteColor];
        cell.imageName = @"my_white";
        cell.alternativeImageName = @"my_white";
        cell.cellImageView.image = [UIImage imageNamed:cell.imageName];
    } else if (indexPath.row == 2) {
        cell.cellImageView.image = [UIImage imageNamed:cell.imageName];
        cell.cellLabel.text = @"Графы коллег";
        cell.cellLabel.font = [UIFont fontWithName:@"AvenirNext-Regular" size:18];
        cell.cellLabel.textColor = [UIColor whiteColor];
        cell.imageName = @"search_white";
        cell.alternativeImageName = @"search_white";
        cell.cellImageView.image = [UIImage imageNamed:cell.imageName];
    } else if (indexPath.row == 3) {
        cell.cellLabel.text = @"Туториал";
        cell.cellLabel.font = [UIFont fontWithName:@"AvenirNext-Regular" size:18];
        cell.cellLabel.textColor = [UIColor whiteColor];
        cell.imageName = @"tutorial_white";
        cell.alternativeImageName = @"tutorial_white";
        cell.cellImageView.image = [UIImage imageNamed:cell.imageName];
    } else if (indexPath.row == 4) {
        cell.cellLabel.text = @"Уведомления";
        cell.cellLabel.font = [UIFont fontWithName:@"AvenirNext-Regular" size:18];
        cell.cellLabel.textColor = [UIColor whiteColor];
        cell.imageName = @"notification_white";
        cell.alternativeImageName = @"notification_white";
        cell.cellImageView.image = [UIImage imageNamed:cell.imageName];
    } else if (indexPath.row == 5) {
        cell.cellLabel.text = @"Настройки";
        cell.cellLabel.font = [UIFont fontWithName:@"AvenirNext-Regular" size:18];
        cell.cellLabel.textColor = [UIColor whiteColor];
        cell.imageName = @"settings_white";
        cell.alternativeImageName = @"settings_white";
        cell.cellImageView.image = [UIImage imageNamed:cell.imageName];
    }
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    MenuTableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    
    cell.cellLabel.textColor = [UIColor whiteColor];
    cell.cellImageView.image = [UIImage imageNamed:cell.alternativeImageName];
    cell.contentView.backgroundColor = [UIColor colorWithRed:114.0/255.0 green:32.0/255.0 blue:128.0/255.0 alpha:1.0];
    
    
    if (indexPath.row == 0) {
        [self performSegueWithIdentifier:@"new" sender:self];
    } else if (indexPath.row == 1) {
        [self performSegueWithIdentifier:@"my" sender:self];
    } else if (indexPath.row == 2) {
        [self performSegueWithIdentifier:@"search" sender:self];
    } else if (indexPath.row == 3) {
        [self performSegueWithIdentifier:@"tutorial" sender:self];
    } else if (indexPath.row == 4) {
       [self performSegueWithIdentifier:@"notification" sender:self];
    } else if (indexPath.row == 5) {
        [self performSegueWithIdentifier:@"settings" sender:self];
    }
}

- (void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath {
    MenuTableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    cell.cellLabel.textColor = [UIColor whiteColor];
    cell.cellImageView.image = [UIImage imageNamed:cell.imageName];
    cell.contentView.backgroundColor = [UIColor clearColor];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.menuTableView.delegate = self;
    self.menuTableView.dataSource = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
