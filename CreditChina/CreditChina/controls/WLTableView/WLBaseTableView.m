//
//  WLBaseTableView.m
//  CreditChina
//
//  Created by 王磊 on 2019/1/30.
//  Copyright © 2019 wanglei. All rights reserved.
//

#import "WLBaseTableView.h"
#import "WLBaseTableViewCell.h"
#import "WLTableViewDataSource.h"


@interface WLBaseTableView ()<UITableViewDelegate>

@end

@implementation WLBaseTableView

- (instancetype)initWithFrame:(CGRect)frame style:(UITableViewStyle)style
{
    self = [super initWithFrame:frame style:style];
    if (self)
    {

    }
    
    return self;
}

#pragma mark - UITableViewDelegate



/** cell高度 */

//- (CGFloat)tableView:(UITableView*)tableView heightForRowAtIndexPath:(NSIndexPath*)indexPath
//{
//    return [WLBaseTableViewCell tableView:tableView rowHeightAtIndexPath:indexPath];
//}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
