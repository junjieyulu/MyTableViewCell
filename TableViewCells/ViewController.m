//
//  ViewController.m
//  TableViewCells
//
//  Created by Lee on 2017/11/22.
//  Copyright © 2017年 Lee. All rights reserved.
//

#import "ViewController.h"
#import <Masonry.h>
#import "LFAboutViewController.h"
#import "LFTableViewCell.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSArray *dataArr;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self mockData];
    [self.view addSubview:self.tableView];
    [self.tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.insets(UIEdgeInsetsMake(0, 0, 0, 0));
    }];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


- (void)mockData {
    self.dataArr = @[@"cell模式一", @"cell模式二", @"cell模式三", @"关于App",];
}


#pragma mark -- Setters & Getters


- (UITableView *)tableView {
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStyleGrouped];
        _tableView.delegate = self;
        _tableView.dataSource = self;
//        _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    }
    return _tableView;
}


- (NSArray *)dataArr {
    if (!_dataArr) {
        _dataArr = [[NSArray alloc] init];
    }
    return _dataArr;
}

#pragma mark -- UITableViewDelegate

//- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
//    return 44.0f;
//}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    LFAboutViewController *aboutViewController = [[LFAboutViewController alloc] init];
    aboutViewController.title = self.dataArr[indexPath.row];
    [self.navigationController pushViewController:aboutViewController animated:YES];
}

#pragma mark -- UITableViewDatasource


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataArr.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row == 0) {
        static NSString *cellIdentifier = @"FirstCell";
        LFTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
        if (!cell) {
            cell = [[LFTableViewCell alloc] initWithType:LFTableViewCellTypeSwitch reuseIdentifier:cellIdentifier];
        }
//<<<<<<< HEAD
////        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
//        cell.iconImageView.image = [UIImage imageNamed:@"mine_settings"];
////        cell.iconImageView.image = nil;
//
//        cell.titleLabel.text = [self.dataArr objectAtIndex:indexPath.row];
//
//=======
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        cell.textLabel.text = [self.dataArr objectAtIndex:indexPath.row];
        cell.imageView.image = [UIImage imageNamed:@"icon_required"];
//        cell.detailTextLabel.text =  @"厉害";
        cell.detailTextField.text = @"12345678";
        cell.detailSwitch.on = YES;
//        cell.detailSwitch
//>>>>>>> 2f39459eb9be1fea3d9a89d86f6d733cbc74321d
        return cell;
    }
    
    static NSString *cellIdentifier = @"cellIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:cellIdentifier];
    }
    cell.accessoryType = indexPath.row == 1 ? UITableViewCellAccessoryNone : UITableViewCellAccessoryDisclosureIndicator;
    cell.textLabel.text = [self.dataArr objectAtIndex:indexPath.row];
//<<<<<<< HEAD
////    cell.imageView.image = indexPath.row == 1 ? [UIImage imageNamed:@"mine_settings"] : [UIImage imageNamed:@"icon_required"];
//=======
    cell.detailTextLabel.text  = @"123456";
    cell.imageView.image = indexPath.row == 1 ? [UIImage imageNamed:@"mine_settings"] : [UIImage imageNamed:@"icon_required"];
//>>>>>>> 2f39459eb9be1fea3d9a89d86f6d733cbc74321d
    return cell;
}

@end
