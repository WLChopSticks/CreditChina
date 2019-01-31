//
//  WLFourItemsCell.m
//  CreditChina
//
//  Created by 王磊 on 2019/1/31.
//  Copyright © 2019 wanglei. All rights reserved.
//

#import "WLFourItemsCell.h"

@interface WLFourItemsCell ()

@property (nonatomic, strong) NSDictionary *contentDict;

@end

@implementation WLFourItemsCell

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
        
        UILabel *keyLabel = [[UILabel alloc]init];
        keyLabel.text = key;
        [self addSubview:keyLabel];
        UILabel *valueLabel = [[UILabel alloc]init];
        valueLabel.text = contentDict[key];
        [self addSubview:valueLabel];
        
        keyLabel.frame = CGRectMake(0, index * 50, 100, 50);
        valueLabel.frame  = CGRectMake(keyLabel.frame.size.width, index * 50, 100, 50);
        index++;
        
    }
}

+(CGFloat)tableView:(UITableView *)tableView rowHeightAtIndexPath:(NSIndexPath *)indexPath withContentDict:(NSDictionary *)dict
{
    
    return 50 * dict.count;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
