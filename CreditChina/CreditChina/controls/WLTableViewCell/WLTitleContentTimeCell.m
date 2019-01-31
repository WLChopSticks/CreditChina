//
//  WLTitleContentTimeCell.m
//  CreditChina
//
//  Created by 王磊 on 2019/1/31.
//  Copyright © 2019 wanglei. All rights reserved.
//

#import "WLTitleContentTimeCell.h"


@implementation WLTitleContentTimeCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

-(void)fillCellContent:(NSDictionary *)contentDict
{
    self.title.text = contentDict[@"title"];
    self.content.text = contentDict[@"content"];
    self.time.text = contentDict[@"time"];
}

+ (CGFloat)tableView:(UITableView *)tableView rowHeightAtIndexPath:(NSIndexPath *)indexPath withContentDict:(NSDictionary *)dict
{
    CGSize size = [dict[@"content"] boundingRectWithSize:CGSizeMake(tableView.frame.size.width - 32, MAXFLOAT)options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:15]}
        context:nil].size;
    return size.height + 70;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
