//
//  ListingsViewController.m
//  Donate_It
//
//  Created by Shena Yoshida on 10/31/15.
//  Copyright © 2015 Justine Kay. All rights reserved.
//

#import "ListingsViewController.h"
#import "CreateListingViewController.h"

@interface ListingsViewController ()
<
UITableViewDataSource,
UITabBarDelegate
>

@property (nonatomic) NSArray *testItem;

@end

@implementation ListingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.testItem = @[
                 @"iPhone 5",
                 @"iPhone 4",
                 @"iPhone 5s"
                 ];
   
}

#pragma mark - table view data

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section  {
    return self.testItem.count;
}

// reuse identifier title: listingCellIdentifier

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"listingCellIdentifier" forIndexPath:indexPath];
    cell.textLabel.text = self.testItem[indexPath.row];
    return cell;
}


- (IBAction)donateItButtonTapped:(UIButton *)sender {
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    
    CreateListingViewController *createListingVC = [storyboard instantiateViewControllerWithIdentifier:@"CreateListingViewController"];
    
    [self presentViewController:createListingVC animated:YES completion:nil];
    
}


@end
