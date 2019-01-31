//
//  WLNewsViewController.m
//  CreditChina
//
//  Created by 王磊 on 2019/1/31.
//  Copyright © 2019 wanglei. All rights reserved.
//

#import "WLNewsViewController.h"
#import "WLTableView.h"
#import "WLTitleContentTimeCell.h"
#import <Masonry.h>

@interface WLNewsViewController ()<wlTableViewDelegate>

@end

@implementation WLNewsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self decorateUI];
}

- (void)decorateUI
{
    self.title = @"新闻资讯";
    WLTableView *tableView = [[WLTableView alloc]init];
    tableView.cellClass = [WLTitleContentTimeCell class];
    [tableView registNibForCell:@"WLTitleContentTimeCell"];
    tableView.rowsData = @[@{@"title":@"title",@"content":@"奋斗案件发来撒福建省了地方建设的来访接待室发; 地方开始的烦死了发送;地方圣诞节啊莲富奋斗案件发来撒福建省了地方建设的来访接待室发; 地方开始的烦死了发送;地方圣诞节啊莲富大厦",@"time":@"2010-10-10"},@{@"title":@"title",@"content":@"奋斗案件发来撒福建省了地方建设的来访接待室发; 地方开始的烦死了发送;地方圣诞节啊莲斗案件发斗案件发斗案件发斗案件发斗案件发斗案件发斗案件发斗案件发斗案件发斗案件发斗案件发斗案件发斗案件发斗案件发斗案件发斗案件发斗案件发斗案件发斗案件发斗案件发斗案件发斗案件发富大厦",@"time":@"2010-10-10"},@{@"title":@"title",@"content":@"奋斗案件发来撒福建省了地方建设的来访接待室发; 地方开始的烦死了发送;地方圣诞节啊莲富大厦",@"time":@"2010-10-10"}];
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
