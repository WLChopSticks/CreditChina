//
//  WLUserFocusTableController.m
//  CreditChina
//
//  Created by 王磊 on 2019/1/31.
//  Copyright © 2019 wanglei. All rights reserved.
//

#import "WLUserFocusTableController.h"
#import "WLTableView.h"
#import "WLFourItemsCell.h"
#import <Masonry.h>

@interface WLUserFocusTableController ()

@end

@implementation WLUserFocusTableController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self decorateUI];
    
}

- (void)decorateUI
{
    WLTableView *tableView = [[WLTableView alloc]init];
    tableView.cellClass = [WLFourItemsCell class];
    tableView.rowsData = @[@{@"标题":@"234",@"内容":@"普通"},@{@"标题":@"234",@"内容":@"普通"},@{@"标题":@"234",@"内容":@"普通"},@{@"标题":@"234",@"内容":@"普通"},@{@"标题":@"234",@"内容":@"普通"}];
    tableView.delegate = self;
    [self.view addSubview:tableView];
    
    [tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view);
    }];
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
