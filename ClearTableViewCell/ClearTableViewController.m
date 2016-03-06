//
//  ClearTableViewController.m
//  ClearTableViewCell
//
//  Created by Danny Ho on 3/6/16.
//  Copyright © 2016 thanksdanny. All rights reserved.
//

#import "ClearTableViewController.h"
#import "ClearTableViewCell.h"

@interface ClearTableViewController () <UITableViewDataSource, UITableViewDelegate>
@property (strong, nonatomic) IBOutlet UITableView *clearTableView;

@end

@implementation ClearTableViewController
#pragma mark - dataSource
- (void)viewDidLoad {
    [super viewDidLoad];
    self.clearTableView.dataSource = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)prefersStatusBarHidden {
    return YES;
}

#pragma mark - data

- (NSArray *)data {
    return @[@"Read 3 article on Medium",
             @"Cleanup bedroom",
             @"Go for a run",
             @"Hit the gym",
             @"Build another swift project",
             @"Movement training",
             @"Fix the layout problem of a client project",
             @"Write the experience of #30daysSwift",
             @"Inbox Zero",
             @"Booking the ticket to Chengdu",
             @"Test the Adobe Project Comet",
             @"Hop on a call to mom"];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return  [[self data] count];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 60;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    ClearTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"clearCell" forIndexPath:indexPath];
    cell.textLabel.text = [NSString stringWithFormat:@"%@", [self data][indexPath.row]];
    
    return cell;
}



@end
