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
#import "WLNetworkTool.h"

@interface WLDoublePublicityViewController ()<wlTableViewDelegate>

@property (nonatomic, weak) WLTableView *tableView;

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
    self.tableView = tableView;
    tableView.cellClass = [WLFourItemsCell class];
    tableView.delegate = self;
    [self.view addSubview:tableView];
    
    [tableView mas_makeConstraints:^(MASConstraintMaker *make) {
       make.edges.equalTo(self.view);
    }];
    
    [self queryData];
}

- (void)queryData
{
    NSMutableDictionary *parameters = [NSMutableDictionary dictionary];
    NSString *user_phone_string = [NSString stringWithFormat:@"{csdm:%@}",@"1"];
    [parameters setObject:user_phone_string forKey:@"inputParameter"];
    WLNetworkTool *networkTool = [WLNetworkTool sharedNetworkToolManager];
    NSString *URL = networkTool.queryAPIList[@"AquireStationsOfCity"];
    [networkTool POST_queryWithURL:URL andParameters:parameters success:^(id  _Nullable responseObject) {
//        NSDictionary *result = (NSDictionary *)responseObject;
        NSArray *arr = @[@{@"公司名":@"234",@"审批类别":@"普通",@"许可文件号":@"234",@"许可行政机构":@"234"},@{@"公司名":@"234",@"审批类别":@"普通",@"许可文件号":@"234",@"许可行政机构":@"234"},@{@"公司名":@"234",@"审批类别":@"普通",@"许可文件号":@"234",@"许可行政机构":@"234"},@{@"公司名":@"234",@"审批类别":@"普通",@"许可文件号":@"234",@"许可行政机构":@"234"},@{@"公司名":@"234",@"审批类别":@"普通",@"许可文件号":@"234",@"许可行政机构":@"234"}];
        self.tableView.rowsData = arr;
        [self.tableView reloadData];
    } failure:^(NSError *error) {
        NSLog(@"%@",error);
        
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
