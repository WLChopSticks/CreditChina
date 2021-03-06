//
//  WLCreditPromiseViewController.m
//  CreditChina
//
//  Created by 王磊 on 2019/1/31.
//  Copyright © 2019 wanglei. All rights reserved.
//

#import "WLCreditPromiseViewController.h"
#import "WLTableView.h"
#import "WLFourItemsCell.h"
#import <Masonry.h>

@interface WLCreditPromiseViewController ()<wlTableViewDelegate>

@end

@implementation WLCreditPromiseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self decorateUI];
}

- (void)decorateUI
{
    self.title = @"信用承诺";
    WLTableView *tableView = [[WLTableView alloc]init];
    tableView.cellClass = [WLFourItemsCell class];
    tableView.rowsData = @[@{@"公司名":@"234",@"接收时间":@"12",@"接收内容":@"234"},@{@"公司名":@"234",@"接收时间":@"12",@"接收内容":@"234"},@{@"公司名":@"234",@"接收时间":@"12",@"接收内容":@"234"}];
    tableView.delegate = self;
    [self.view addSubview:tableView];
    [tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view);
    }];
}

- (void)wlTableView:(UITableView *)tableView didSelectCellAtIndexPath:(NSIndexPath *)indexPath
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
