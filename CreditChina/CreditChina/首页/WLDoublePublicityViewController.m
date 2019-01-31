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
    WLTableView *tableView = [[WLTableView alloc]initWithFrame:self.view.bounds];
    tableView.cellClass = [WLFourItemsCell class];
    tableView.rowsData = @[@{@"123":@"234",@"12s3":@"234",@"1s23":@"234",@"1q23":@"234"},@{@"123":@"234"},@{@"123":@"234"},@{@"123":@"234"}];
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
