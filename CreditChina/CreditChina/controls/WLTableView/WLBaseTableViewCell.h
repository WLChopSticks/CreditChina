//
//  WLBaseTableViewCell.h
//  CreditChina
//
//  Created by 王磊 on 2019/1/30.
//  Copyright © 2019 wanglei. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface WLBaseTableViewCell : UITableViewCell

+ (CGFloat)tableView:(UITableView*)tableView rowHeightAtIndexPath:(NSIndexPath *)indexPath withContentDict: (NSDictionary *)dict;

- (void)fillCellContent: (NSDictionary *)contentDict;

@end

