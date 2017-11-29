//
//  LFAboutViewController.m
//  TableViewCells
//
//  Created by Lee on 2017/11/27.
//Copyright © 2017年 Lee. All rights reserved.
//

#import "LFAboutViewController.h"

@interface LFAboutViewController ()

@property (nonatomic, strong) UITableView *tableView;

@end

@implementation LFAboutViewController

#pragma mark - Life Cycle

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
}


#pragma mark - Event Handlers


#pragma mark - Notifications


#pragma mark - Private Methods


#pragma mark - Public Methods


#pragma mark - Getters and Setters


- (UITableView *)tableView {
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStyleGrouped];
//        _tableView.delegate = self;
//        _tableView.dataSource = self;
    }
    return _tableView;
}

@end
