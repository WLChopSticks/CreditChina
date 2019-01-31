//
//  WLBaseTableViewCell.m
//  CreditChina
//
//  Created by 王磊 on 2019/1/30.
//  Copyright © 2019 wanglei. All rights reserved.
//

#import "WLBaseTableViewCell.h"

@implementation WLBaseTableViewCell
/** 每一个cell的高度 */

+ (CGFloat)tableView:(UITableView*)tableView rowHeightAtIndexPath:(NSIndexPath *)indexPath withContentDict:( NSDictionary *)dict
{
    return 44;
}

-(void)fillCellContent:(NSDictionary *)contentDict
{
    NSLog(@"子类实现方法");
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}



- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
