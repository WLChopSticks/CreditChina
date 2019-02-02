//
//  WLImageTitleAccessCell.h
//  CreditChina
//
//  Created by 王磊 on 2019/1/31.
//  Copyright © 2019 wanglei. All rights reserved.
//

#import "WLBaseTableViewCell.h"

NS_ASSUME_NONNULL_BEGIN

@interface WLImageTitleAccessCell : WLBaseTableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *image;
@property (weak, nonatomic) IBOutlet UILabel *title;
@property (weak, nonatomic) IBOutlet UILabel *subTitle;
@property (weak, nonatomic) IBOutlet UIImageView *accessView;

@end

NS_ASSUME_NONNULL_END
