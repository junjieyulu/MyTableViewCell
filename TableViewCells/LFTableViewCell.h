//
//  LFTableViewCell.h
//  TableViewCells
//
//  Created by Lee on 2017/11/28.
//Copyright © 2017年 Lee. All rights reserved.
//

#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger, LFTableViewCellType) {
    LFTableViewCellTypeDefault,//默认从0开始
    LFTableViewCellTypeTextField,
    LFTableViewCellTypeDetail,
    LFTableViewCellTypeSwitch
};

@interface LFTableViewCell : UITableViewCell

@property (nonatomic, readonly, strong, nullable) UIImageView *iconImageView NS_AVAILABLE_IOS(3_0);   // default is nil.  image view will be created if necessary.
@property (nonatomic, readonly, strong, nullable) UILabel *titleLabel;

/**
 LFTableViewCell 初始化方法

 @param type LFTableViewCell 类型
 @param reuseIdentifier LFTableViewCell 重用标识
 @return 返回LFTableViewCell实例对象
 */
- (instancetype)initWithType:(LFTableViewCellType)type reuseIdentifier:(NSString *)reuseIdentifier;

@end
NS_ASSUME_NONNULL_END
