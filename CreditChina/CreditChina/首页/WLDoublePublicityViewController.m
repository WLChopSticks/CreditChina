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
        NSArray *arr = @[@{@"公司名":@"西安上镜服务有限公司",@"审核类型":@"核准",@"许可文书号":@"(2019)0006",@"许可机关":@"西安市城市管理局"},@{@"公司名":@"西安上镜服务有限公司",@"审核类型":@"核准",@"许可文书号":@"(2019)0006",@"许可机关":@"西安市城市管理局"},@{@"公司名":@"西安上镜服务有限公司",@"审核类型":@"核准",@"许可文书号":@"(2019)0006",@"许可机关":@"西安市城市管理局"},@{@"公司名":@"西安上镜服务有限公司",@"审核类型":@"核准",@"许可文书号":@"(2019)0006",@"许可机关":@"西安市城市管理局"}];
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
