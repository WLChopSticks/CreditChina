//
//  WLTableView.m
//  CreditChina
//
//  Created by 王磊 on 2019/1/30.
//  Copyright © 2019 wanglei. All rights reserved.
//

#import "WLTableView.h"
#import "WLBaseTableView.h"
#import "WLBaseTableViewCell.h"
#import <objc/runtime.h>
#import <Masonry.h>

@interface WLTableView ()<UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, weak) WLBaseTableView *wltableView;

@end

@implementation WLTableView

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self decorateUI];
    }
    return self;
}

- (void)decorateUI
{
    WLBaseTableView *tableView = [[WLBaseTableView alloc]initWithFrame:self.bounds style:UITableViewStylePlain];
    self.wltableView = tableView;
    [self addSubview:tableView];
    tableView.dataSource = self;
    tableView.delegate = self;
    
    [tableView mas_makeConstraints:^(MASConstraintMaker *make) {
       make.edges.equalTo(self);
    }];
}

-(void)reloadData
{
    [self.wltableView reloadData];
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.rowsData.count;
}

/** cell样式 */
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell;
    if ([self.delegate respondsToSelector:@selector(wltableView:cellForRowAtIndexPath:)])
    {
        cell = [self.delegate wltableView:tableView cellForRowAtIndexPath:indexPath];
    }else
    {
        Class class = self.cellClass;
        
        NSString *className = [NSString stringWithUTF8String:class_getName(class)];
        
        cell = [tableView dequeueReusableCellWithIdentifier:className];
        
        if (!cell)
        {
            cell = [[class alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:className];
        }
        
        if ([cell isKindOfClass:[WLBaseTableViewCell class]])
        {
            WLBaseTableViewCell *customCell = (WLBaseTableViewCell *)cell;
            [customCell fillCellContent:self.rowsData[indexPath.row]];
        }
    }
    
    
//    cell..text = self.rowsData[indexPath.row];
    
    return cell;
    
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
//    return 150;
    return [self.cellClass tableView:tableView rowHeightAtIndexPath:indexPath withContentDict:self.rowsData[indexPath.row]];
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if ([self.delegate respondsToSelector:@selector(wlTableView:didSelectCellAtIndexPath:)])
    {
        [self.delegate wlTableView:tableView didSelectCellAtIndexPath:indexPath];
    }
}



- (void)registNibForCell: (NSString *)nibName
{
    Class class = self.cellClass;
    NSString *className = [NSString stringWithUTF8String:class_getName(class)];
    [self.wltableView registerNib:[UINib nibWithNibName:nibName bundle:nil] forCellReuseIdentifier:className];
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
