//
//  WLImageTitleAccessCell.m
//  CreditChina
//
//  Created by 王磊 on 2019/1/31.
//  Copyright © 2019 wanglei. All rights reserved.
//

#import "WLImageTitleAccessCell.h"

@implementation WLImageTitleAccessCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

-(void)fillCellContent:(NSDictionary *)contentDict
{
    self.image.image = [UIImage imageNamed:contentDict[@"image"]];
    self.title.text = contentDict[@"title"];
    self.subTitle.text = contentDict[@"subTitle"];
    self.accessView.image = [UIImage imageNamed:contentDict[@"accessView"]];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
