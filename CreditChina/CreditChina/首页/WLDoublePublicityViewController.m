//
//  WLDoublePublicityViewController.m
//  CreditChina
//
//  Created by 王磊 on 2019/1/30.
//  Copyright © 2019 wanglei. All rights reserved.
//

#import "WLDoublePublicityViewController.h"
#import "WLFourItemsCell.h"
#import "WLTableView.h"
#import <Masonry.h>

@interface WLDoublePublicityViewController ()<wlTableViewDelegate>

@end

@implementation WLDoublePublicityViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self decorateUI];
    
}

- (void)decorateUI
{
    self.title = @"双公示展示";
    WLTableView *tableView = [[WLTableView alloc]init];
    tableView.cellClass = [WLFourItemsCell class];
    tableView.rowsData = @[@{@"公司名":@"234",@"审批类别":@"普通",@"许可文件号":@"234",@"许可行政机构":@"234"},@{@"公司名":@"234",@"审批类别":@"普通",@"许可文件号":@"234",@"许可行政机构":@"234"},@{@"公司名":@"234",@"审批类别":@"普通",@"许可文件号":@"234",@"许可行政机构":@"234"},@{@"公司名":@"234",@"审批类别":@"普通",@"许可文件号":@"234",@"许可行政机构":@"234"},@{@"公司名":@"234",@"审批类别":@"普通",@"许可文件号":@"234",@"许可行政机构":@"234"}];
    tableView.delegate = self;
    [self.view addSubview:tableView];
    
    [tableView mas_makeConstraints:^(MASConstraintMaker *make) {
       make.edges.equalTo(self.view);
    }];
}

-(void)wlTableView:(UITableView *)tableView didSelectCellAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"点击了cell %ld", indexPath.row);
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
