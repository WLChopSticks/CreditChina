//
//  WLTFourItemsWithTitleCell.m
//  CreditChina
//
//  Created by 王磊 on 2019/2/2.
//  Copyright © 2019 wanglei. All rights reserved.
//

#import "WLTFourItemsWithTitleCell.h"

#define LabelHeight 30

@interface WLTFourItemsWithTitleCell ()

@property (nonatomic, strong) NSDictionary *contentDict;

@end

@implementation WLTFourItemsWithTitleCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

-(void)fillCellContent:(NSDictionary *)contentDict
{
    self.contentDict = contentDict;
    int index = 0;
    for (NSString *key in contentDict.allKeys)
    {
        if (index == 0)
        {
            UILabel *titleLabel = [[UILabel alloc]init];
            titleLabel.font = [UIFont systemFontOfSize:15];
            titleLabel.text = contentDict[key];
            titleLabel.textColor = [UIColor blueColor];
            [self addSubview:titleLabel];
            titleLabel.frame = CGRectMake(10, index * LabelHeight, 100, LabelHeight);
            index++;
            continue;
        }
        
        UILabel *keyLabel = [[UILabel alloc]init];
        keyLabel.text = key;
        keyLabel.font = [UIFont systemFontOfSize:13];
        [self addSubview:keyLabel];
        UILabel *valueLabel = [[UILabel alloc]init];
        valueLabel.text = contentDict[key];
        valueLabel.font = [UIFont systemFontOfSize:13];
        [self addSubview:valueLabel];
        
        keyLabel.frame = CGRectMake(10, index * LabelHeight, 100, LabelHeight);
        int valueLabelWidth = [UIScreen mainScreen].bounds.size.width - CGRectGetMaxX(keyLabel.frame) - 20;
        valueLabel.frame  = CGRectMake(keyLabel.frame.size.width + 10, index * LabelHeight,valueLabelWidth , LabelHeight);
        index++;
        
    }
}

+(CGFloat)tableView:(UITableView *)tableView rowHeightAtIndexPath:(NSIndexPath *)indexPath withContentDict:(NSDictionary *)dict
{
    
    return LabelHeight * dict.count;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
