//
//  WLExhibitonViewController.m
//  CreditChina
//
//  Created by 王磊 on 2019/1/30.
//  Copyright © 2019 wanglei. All rights reserved.
//

#import "WLExhibitonViewController.h"
#import "WLDoublePublicityViewController.h"

@interface WLExhibitonViewController ()

@property (nonatomic, strong) NSArray *topViewContents;
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
    UIScrollView *topView = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, Screen_Width, Screen_Height * 0.2)];
    topView.pagingEnabled = YES;
    topView.contentSize = CGSizeMake(Screen_Width * self.topViewContents.count, topView.frame.size.height);
    topView.backgroundColor = [UIColor redColor];
    [self.view addSubview:topView];
    
    for (int i = 0; i < self.topViewContents.count; i++)
    {
        UIButton *contentBtn = [[UIButton alloc]initWithFrame:CGRectMake(i * Screen_Width, 0, Screen_Width, topView.frame.size.height)];
        contentBtn.backgroundColor = self.topViewContents[i];
        [topView addSubview:contentBtn];
    }
    
    UIView *functionView = [[UIView alloc]initWithFrame:CGRectMake(0, topView.frame.size.height, Screen_Width, Screen_Height - topView.frame.size.height)];
    [self.view addSubview:functionView];
    functionView.backgroundColor = [UIColor purpleColor];
    
    for (int i = 0; i < self.functionBtns.count; i++)
    {
        UIButton *functionBtn = [[UIButton alloc]init];
        NSDictionary *dict = self.functionBtns[i];
        [functionBtn setTitle:dict[@"title"] forState:UIControlStateNormal];
        functionBtn.tag = i;
        [functionBtn addTarget:self action:@selector(functionBtnDidClicking:) forControlEvents:UIControlEventTouchUpInside];
        int width = Screen_Width * 0.5;
        int height = 70;
        int x = i % 2 == 0 ? 0 : Screen_Width * 0.5;
        int y = i / 2 * height;
        functionBtn.frame = CGRectMake(x, y, width, height);
        [functionView addSubview:functionBtn];
        
    }

    
}

- (void)functionBtnDidClicking: (UIButton *)sender
{
    NSLog(@"点击了功能按钮%d", sender.tag);
    WLDoublePublicityViewController *vc = [[WLDoublePublicityViewController alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
}

-(NSArray *)topViewContents
{
    if (_topViewContents == nil)
    {
        _topViewContents = [NSArray arrayWithObjects:[UIColor redColor],[UIColor yellowColor],[UIColor blueColor], nil];
    }
    return _topViewContents;
}

-(NSArray *)functionBtns
{
    if (_functionBtns == nil)
    {
        NSMutableArray *arrTem = [NSMutableArray arrayWithCapacity:8];
        [arrTem addObject:@{@"image":@"", @"title":@"双公示"}];
        [arrTem addObject:@{@"image":@"", @"title":@"联合奖惩(红黑名单)"}];
        [arrTem addObject:@{@"image":@"", @"title":@"联合奖惩(典型案例)"}];
        [arrTem addObject:@{@"image":@"", @"title":@"信用报告"}];
        [arrTem addObject:@{@"image":@"", @"title":@"新闻资讯"}];
        [arrTem addObject:@{@"image":@"", @"title":@"信用承诺"}];
        [arrTem addObject:@{@"image":@"", @"title":@"相关政策"}];
        [arrTem addObject:@{@"image":@"", @"title":@"信用信息查询"}];
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
