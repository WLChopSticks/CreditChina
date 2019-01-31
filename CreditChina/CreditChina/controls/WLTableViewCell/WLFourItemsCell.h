//
//  WLFourItemsCell.h
//  CreditChina
//
//  Created by 王磊 on 2019/1/31.
//  Copyright © 2019 wanglei. All rights reserved.
//

#import "WLBaseTableViewCell.h"

NS_ASSUME_NONNULL_BEGIN

@interface WLFourItemsCell : WLBaseTableViewCell
@property (weak, nonatomic) IBOutlet UILabel *firstItemKey;
@property (weak, nonatomic) IBOutlet UILabel *firstItemValue;
@property (weak, nonatomic) IBOutlet UILabel *secondItemKey;
@property (weak, nonatomic) IBOutlet UILabel *secondItemValue;
@property (weak, nonatomic) IBOutlet UILabel *thirdItemKey;
@property (weak, nonatomic) IBOutlet UILabel *thirdItemValue;
@property (weak, nonatomic) IBOutlet UILabel *fourthItemKey;
@property (weak, nonatomic) IBOutlet UILabel *fourthItemValue;

@end

NS_ASSUME_NONNULL_END
