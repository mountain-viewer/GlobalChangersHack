//
//  MyGraphsViewController.m
//  Megafon App
//
//  Created by whoami on 5/5/18.
//  Copyright © 2018 Mountain Viewer. All rights reserved.
//

#import "MyGraphsViewController.h"
#import "SWRevealViewController.h"

@interface MyGraphsViewController ()
@property (weak, nonatomic) IBOutlet UIBarButtonItem *sidebarButton;

@end

@implementation MyGraphsViewController

- (void)configureRevealVC {
    SWRevealViewController *revealViewController = self.revealViewController;
    
    if (revealViewController) {
        [self.sidebarButton setTarget: self.revealViewController];
        [self.sidebarButton setAction: @selector(revealToggle:)];
        [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self configureRevealVC];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
