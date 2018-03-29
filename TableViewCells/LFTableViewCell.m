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
<<<<<<< HEAD
@property (nonatomic, strong) UILabel *detailLabel;
@property (nonatomic, strong) UIImageView *accessoryImageView;
=======
@property (nonatomic, strong) UISwitch *detailSwitch;
>>>>>>> 2f39459eb9be1fea3d9a89d86f6d733cbc74321d

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

<<<<<<< HEAD

#pragma mark - Private Methods


- (void)setup {
//    [self.contentView addSubview:self.iconImageView];
    [self.contentView addSubview:self.titleLabel];
    
    __weak typeof(self) weakSelf = self;
//    [self.iconImageView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.left.equalTo(@PADDING);
//        make.centerY.mas_equalTo(weakSelf.contentView.mas_centerY);
////        make.top.equalTo(@PADDING);
////        make.bottom.equalTo(@-PADDING);
////        make.width.mas_equalTo(weakSelf.iconImageView.mas_height);
//    }];
    [self.titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(@PADDING).priorityLow();
//        make.left.mas_equalTo(weakSelf.iconImageView.mas_right).offset(offset);
        make.centerY.mas_equalTo(weakSelf.contentView.mas_centerY);
    }];
    
    switch (_cellType) {
        case LFTableViewCellTypeDefault:
            break;
        case LFTableViewCellTypeDetail:
            
            break;
        case LFTableViewCellTypeSwitch:
            
            break;
        case LFTableViewCellTypeTextField:
            
            break;
        default:
            break;
    }
//    [self.contentView addSubview:self.detailLabel];
    [self.contentView addSubview:self.accessoryImageView];
    [self.accessoryImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(@-PADDING);
        make.top.equalTo(@PADDING);
        make.bottom.equalTo(@-PADDING);
        make.width.mas_equalTo(weakSelf.accessoryImageView.mas_height).priority(0.7);
    }];
}

=======
>>>>>>> 2f39459eb9be1fea3d9a89d86f6d733cbc74321d
#pragma mark - Public Methods

#pragma mark - Getters and Setters

<<<<<<< HEAD
- (UIImageView *)iconImageView {
    if (!_iconImageView) {
        _iconImageView = [[UIImageView alloc] init];
        _iconImageView.backgroundColor = [UIColor yellowColor];
        [self.contentView addSubview:_iconImageView];
        __weak typeof(self) weakSelf = self;
        [_iconImageView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(@PADDING);
            make.centerY.mas_equalTo(weakSelf.contentView.mas_centerY);
        }];
        [_titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(weakSelf.iconImageView.mas_right).offset(weakSelf.iconImageView.image == nil ? 0 : PADDING);
        }];
    }
    return _iconImageView;
}


- (UILabel *)titleLabel {
    if (!_titleLabel) {
        _titleLabel = [[UILabel alloc] init];
        _titleLabel.backgroundColor = [UIColor yellowColor];
    }
    return _titleLabel;
}


=======
>>>>>>> 2f39459eb9be1fea3d9a89d86f6d733cbc74321d
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
