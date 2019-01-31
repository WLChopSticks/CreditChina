//
//  WLTitleContentTimeCell.h
//  CreditChina
//
//  Created by 王磊 on 2019/1/31.
//  Copyright © 2019 wanglei. All rights reserved.
//

#import "WLBaseTableViewCell.h"

NS_ASSUME_NONNULL_BEGIN

@interface WLTitleContentTimeCell : WLBaseTableViewCell
@property (weak, nonatomic) IBOutlet UILabel *title;
@property (weak, nonatomic) IBOutlet UILabel *content;
@property (weak, nonatomic) IBOutlet UILabel *time;

@end

NS_ASSUME_NONNULL_END
