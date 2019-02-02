//
//  WLExhibitonViewController.m
//  CreditChina
//
//  Created by 王磊 on 2019/1/30.
//  Copyright © 2019 wanglei. All rights reserved.
//

#import "WLExhibitonViewController.h"
#import "WLDoublePublicityViewController.h"
#import "WLRewardsAndPunishListViewController.h"
#import "WLRewardsAndPunishExampleViewController.h"
#import "WLCreditReportViewController.h"
#import "WLNewsViewController.h"
#import "WLCreditPromiseViewController.h"
#import "WLRelatedPolicyViewController.h"
#import "WLQueryCreditInfoViewController.h"
#import <SDCycleScrollView.h>
#import "WLSegmentTableViewController.h"

@interface WLExhibitonViewController ()<SDCycleScrollViewDelegate>

@property (nonatomic, strong) NSArray *functionBtns;

@end

@implementation WLExhibitonViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self decorateUI];
    
}

- (void)decorateUI
{
    UIBarButtonItem *emblem = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"emblem"] style:UIBarButtonItemStylePlain target:nil action:nil];
    self.navigationItem.leftBarButtonItem = emblem;
    
    SDCycleScrollView *topView = [SDCycleScrollView cycleScrollViewWithFrame:CGRectMake(10, 10, Screen_Width-20, Screen_Height * 0.25) delegate:self placeholderImage:[UIImage imageNamed:@"temp"]];
    NSArray *imagesURLStrings = @[
                                  @"https://ss2.baidu.com/-vo3dSag_xI4khGko9WTAnF6hhy/super/whfpf%3D425%2C260%2C50/sign=a4b3d7085dee3d6d2293d48b252b5910/0e2442a7d933c89524cd5cd4d51373f0830200ea.jpg",
                                  @"https://ss0.baidu.com/-Po3dSag_xI4khGko9WTAnF6hhy/super/whfpf%3D425%2C260%2C50/sign=a41eb338dd33c895a62bcb3bb72e47c2/5fdf8db1cb134954a2192ccb524e9258d1094a1e.jpg",
                                  @"http://c.hiphotos.baidu.com/image/w%3D400/sign=c2318ff84334970a4773112fa5c8d1c0/b7fd5266d0160924c1fae5ccd60735fae7cd340d.jpg"
                                  ];
    topView.imageURLStringsGroup = imagesURLStrings;
    [self.view addSubview:topView];
    
    UIView *functionView = [[UIView alloc]initWithFrame:CGRectMake(0, topView.frame.size.height + 30, Screen_Width, Screen_Height - topView.frame.size.height)];
    [self.view addSubview:functionView];
    
    for (int i = 0; i < self.functionBtns.count; i++)
    {
        UIButton *functionBtn = [[UIButton alloc]init];

        NSDictionary *dict = self.functionBtns[i];
        [functionBtn setTitle:dict[@"title"] forState:UIControlStateNormal];
        [functionBtn setImage:[UIImage imageNamed:dict[@"image"]] forState:UIControlStateNormal];
        functionBtn.titleLabel.font = [UIFont systemFontOfSize:13];
        [functionBtn setTitleColor:[UIColor lightGrayColor] forState:UIControlStateNormal];
        
        functionBtn.tag = i;
        [functionBtn addTarget:self action:@selector(functionBtnDidClicking:) forControlEvents:UIControlEventTouchUpInside];
        int width = Screen_Width * 0.5;
        int height = 80;
        int x = i % 2 == 0 ? 0 : Screen_Width * 0.5;
        int y = i / 2 * height;
        functionBtn.frame = CGRectMake(x, y, width, height);
        
        functionBtn.titleEdgeInsets = UIEdgeInsetsMake(5, -functionBtn.imageView.frame.size.width, -functionBtn.imageView.frame.size.height, 0);
        functionBtn.imageEdgeInsets = UIEdgeInsetsMake(-functionBtn.titleLabel.intrinsicContentSize.height, 0, 0, -functionBtn.titleLabel.intrinsicContentSize.width);
        
        [functionView addSubview:functionBtn];
        
    }

    
}

- (void)functionBtnDidClicking: (UIButton *)sender
{
    NSLog(@"点击了功能按钮%ld", (long)sender.tag);
    switch (sender.tag)
    {
        case 0:
        {
            WLSegmentTableViewController *segVC = [[WLSegmentTableViewController alloc]init];
            segVC.titles = @[@"行政许可",@"行政处罚"];
            WLDoublePublicityViewController *vc1 = [[WLDoublePublicityViewController alloc]init];
            WLDoublePublicityViewController *vc2 = [[WLDoublePublicityViewController alloc]init];
            segVC.controllers = @[vc1,vc2];
            segVC.title = @"双公示展示";
            [self.navigationController pushViewController:segVC animated:YES];
            break;
        }
        case 1:
        {
            WLSegmentTableViewController *segVC = [[WLSegmentTableViewController alloc]init];
            segVC.titles = @[@"红名单",@"黑名单"];
            WLRewardsAndPunishListViewController *vc1 = [[WLRewardsAndPunishListViewController alloc]init];
            WLRewardsAndPunishListViewController *vc2 = [[WLRewardsAndPunishListViewController alloc]init];
            segVC.controllers = @[vc1,vc2];
            [self.navigationController pushViewController:segVC animated:YES];
            break;
        }
        case 2:
        {
            WLRewardsAndPunishExampleViewController *vc = [[WLRewardsAndPunishExampleViewController alloc]init];
            [self.navigationController pushViewController:vc animated:YES];
            break;
        }
        case 3:
        {
            WLCreditReportViewController *vc = [[WLCreditReportViewController alloc]init];
            [self.navigationController pushViewController:vc animated:YES];
            break;
        }
        case 4:
        {
            WLSegmentTableViewController *segVC = [[WLSegmentTableViewController alloc]init];
            segVC.titles = @[@"国家级",@"省级",@"市级",@"国外"];
            WLNewsViewController *vc1 = [[WLNewsViewController alloc]init];
            WLNewsViewController *vc2 = [[WLNewsViewController alloc]init];
            WLNewsViewController *vc3 = [[WLNewsViewController alloc]init];
            WLNewsViewController *vc4 = [[WLNewsViewController alloc]init];
            segVC.controllers = @[vc1,vc2, vc3, vc4];
            [self.navigationController pushViewController:segVC animated:YES];
            break;
        }
        case 5:
        {
            WLCreditPromiseViewController *vc = [[WLCreditPromiseViewController alloc]init];
            [self.navigationController pushViewController:vc animated:YES];
            break;
        }
        case 6:
        {
            WLRelatedPolicyViewController *vc = [[WLRelatedPolicyViewController alloc]init];
            [self.navigationController pushViewController:vc animated:YES];
            break;
        }
        case 7:
        {
            WLQueryCreditInfoViewController *vc = [[WLQueryCreditInfoViewController alloc]init];
            [self.navigationController pushViewController:vc animated:YES];
            break;
        }
            
        default:
            break;
    }
    
}

-(NSArray *)functionBtns
{
    if (_functionBtns == nil)
    {
        NSMutableArray *arrTem = [NSMutableArray arrayWithCapacity:8];
        [arrTem addObject:@{@"image":@"DoublePublicity", @"title":@"双公示"}];
        [arrTem addObject:@{@"image":@"RewardsAndPunish", @"title":@"联合奖惩(红黑名单)"}];
        [arrTem addObject:@{@"image":@"RewardsAndPunish1", @"title":@"联合奖惩(典型案例)"}];
        [arrTem addObject:@{@"image":@"creditReport", @"title":@"信用报告"}];
        [arrTem addObject:@{@"image":@"newsIcon", @"title":@"新闻资讯"}];
        [arrTem addObject:@{@"image":@"creditPromise", @"title":@"信用承诺"}];
        [arrTem addObject:@{@"image":@"relatedPolicy", @"title":@"相关政策"}];
        [arrTem addObject:@{@"image":@"queryInfo", @"title":@"信用信息查询"}];
        _functionBtns = [NSArray arrayWithArray:arrTem];
    }
    return _functionBtns;
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
