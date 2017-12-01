//
//  LFTableViewCell.m
//  TableViewCells
//
//  Created by Lee on 2017/11/28.
//Copyright © 2017年 Lee. All rights reserved.
//

#import "LFTableViewCell.h"
#import <Masonry.h>

#define PADDING 15

@interface LFTableViewCell ()

@property (nonatomic, strong) UITextField *detailTextField;
@property (nonatomic, strong) UISwitch *detailSwitch;

@end

@implementation LFTableViewCell
{
    LFTableViewCellType _cellType;
}

- (instancetype)initWithType:(LFTableViewCellType)type reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:( type != LFTableViewCellTypeSwitch) ? UITableViewCellStyleValue1 : UITableViewCellStyleDefault reuseIdentifier:reuseIdentifier];
    if (self) {
        _cellType = type;
    }
    return self;
}

#pragma mark - Public Methods

#pragma mark - Getters and Setters

- (UITextField *)detailTextField {
    if (!_detailTextField & (_cellType == LFTableViewCellTypeTextField)) {
        _detailTextField = [[UITextField alloc] init];
        _detailTextField.textAlignment = NSTextAlignmentRight;
        [self.contentView addSubview:_detailTextField];
        __weak typeof(self) weakSelf = self;
        [_detailTextField mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.equalTo(@-PADDING).priorityLow();
            if (self.accessoryType) {
                make.right.equalTo(@0).priorityHigh();
            }
            make.centerY.mas_equalTo(weakSelf.contentView.mas_centerY);
        }];
    }
    return _detailTextField;
}


- (UISwitch *)detailSwitch {
    if (!_detailSwitch & (_cellType == LFTableViewCellTypeSwitch)) {
        _detailSwitch = [[UISwitch alloc] init];
        [self.contentView addSubview:_detailSwitch];
        __weak typeof(self) weakSelf = self;
        [_detailSwitch mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.equalTo(@-PADDING).priorityLow();
            if (self.accessoryType) {
                make.right.equalTo(@0).priorityHigh();
            }
            make.centerY.mas_equalTo(weakSelf.contentView.mas_centerY);
        }];
    }
    return _detailSwitch;
}

@end
