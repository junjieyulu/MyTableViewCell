//
//  LFTableViewCell.h
//  TableViewCells
//
//  Created by Lee on 2017/11/28.
//Copyright © 2017年 Lee. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, LFTableViewCellType) {
    LFTableViewCellTypeDefault,//默认从0开始
    LFTableViewCellTypeTextField,
    LFTableViewCellTypeDetail,
    LFTableViewCellTypeSwitch,
};




@interface LFTableViewCell : UITableViewCell

@property (nonatomic, strong) UIImageView *iconImageView;
@property (nonatomic, strong) UILabel *titleLabel;

- (instancetype)initWithType:(LFTableViewCellType)type reuseIdentifier:(NSString *)reuseIdentifier;

@end
