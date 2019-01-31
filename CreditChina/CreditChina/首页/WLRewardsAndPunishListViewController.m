//
//  WLRewardsAndPunishListViewController.m
//  CreditChina
//
//  Created by 王磊 on 2019/1/31.
//  Copyright © 2019 wanglei. All rights reserved.
//

#import "WLRewardsAndPunishListViewController.h"
#import "WLTableView.h"
#import "WLFourItemsCell.h"

@interface WLRewardsAndPunishListViewController ()<wlTableViewDelegate>

@end

@implementation WLRewardsAndPunishListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self decorateUI];
}

- (void)decorateUI
{
    self.title = @"联合奖惩名单";
    WLTableView *tableView = [[WLTableView alloc]initWithFrame:self.view.bounds];
    tableView.cellClass = [WLFourItemsCell class];
    tableView.rowsData = @[@{@"公司名":@"234",@"接收时间":@"12",@"接收内容":@"234"},@{@"公司名":@"234",@"接收时间":@"12",@"接收内容":@"234"},@{@"公司名":@"234",@"接收时间":@"12",@"接收内容":@"234"}];
    tableView.delegate = self;
    [self.view addSubview:tableView];
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
