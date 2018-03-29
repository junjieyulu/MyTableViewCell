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
@property (nonatomic, readwrite, strong) UIImageView *iconImageView NS_AVAILABLE_IOS(3_0);   // default is nil.  image view will be created if necessary.
@property (nonatomic, readwrite, strong) UILabel *titleLabel;

@property (nonatomic, strong) UITextField *detailTextField;
@property (nonatomic, strong) UILabel *detailLabel;
@property (nonatomic, strong) UIImageView *accessoryImageView;

@end

@implementation LFTableViewCell
{
    LFTableViewCellType _cellType;
}


- (instancetype)initWithType:(LFTableViewCellType)type reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:UITableViewCellStyleDefault reuseIdentifier:reuseIdentifier];
    if (self) {
        _cellType = type;
        [self setup];
    }
    return self;
}


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

#pragma mark - Public Methods


#pragma mark - Getters and Setters

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


- (UITextField *)detailTextField {
    if (!_detailTextField) {
        _detailTextField = [[UITextField alloc] init];
        _detailTextField.backgroundColor = [UIColor grayColor];
    }
    return _detailTextField;
}


- (UILabel *)detailLabel {
    if (!_detailLabel) {
        _detailLabel = [[UILabel alloc] init];
        _detailLabel.backgroundColor = [UIColor greenColor];
    }
    return _detailLabel;
}


- (UIImageView *)accessoryImageView {
    if (!_accessoryImageView) {
        _accessoryImageView = [[UIImageView alloc] init];
        _accessoryImageView.backgroundColor = [UIColor blueColor];
    }
    return _accessoryImageView;
}

@end
