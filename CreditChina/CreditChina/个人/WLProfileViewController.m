//
//  WLProfileViewController.m
//  CreditChina
//
//  Created by 王磊 on 2019/1/30.
//  Copyright © 2019 wanglei. All rights reserved.
//

#import "WLProfileViewController.h"
#import "WLTableView.h"
#import <Masonry.h>
#import "WLImageTitleAccessCell.h"
#import <objc/runtime.h>

@interface WLProfileViewController ()<wlTableViewDelegate>

@property (nonatomic, strong) WLTableView *tableView;

@end

@implementation WLProfileViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    self.navigationController.navigationBar.hidden = YES;
    [self decorateUI];
    
}

- (void)decorateUI
{
    WLTableView *tableView = [[WLTableView alloc]init];
    self.tableView = tableView;
    tableView.cellClass = [WLImageTitleAccessCell class];
    [tableView registNibForCell:@"WLImageTitleAccessCell"];
    tableView.rowsData =@[@{@"image":@"",@"title":@"fadsf",@"subTitle":@"",@"accessView":@""},@{@"image":@"",@"title":@"fadsf",@"subTitle":@"",@"accessView":@""},@{@"image":@"",@"title":@"fadsf",@"subTitle":@"",@"accessView":@""}];
    tableView.delegate = self;
    [self.view addSubview:tableView];
    
    [tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view);
    }];
}

-(UITableViewCell *)wltableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell;
    if (indexPath.row == 0)
    {
        cell = [tableView dequeueReusableCellWithIdentifier:@"header"];
        if (cell == nil)
        {
            cell = [[UITableViewCell alloc]init];
            cell.textLabel.text = @"123";
        }
    }else
    {
        Class class = [WLImageTitleAccessCell class];
        
        NSString *className = [NSString stringWithUTF8String:class_getName(class)];
        
        cell = [tableView dequeueReusableCellWithIdentifier:className];
        
        if (!cell)
        {
            cell = [[class alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:className];
        }
        
        if ([cell isKindOfClass:[WLBaseTableViewCell class]])
        {
            WLBaseTableViewCell *customCell = (WLBaseTableViewCell *)cell;
            [customCell fillCellContent:@{@"image":@"",@"title":@"fadsf",@"subTitle":@"",@"accessView":@""}];
        }
    }
    
//        cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
//        if (cell ==  nil)
//        {
//            cell = [[WLImageTitleAccessCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"cell"];
//            WLBaseTableViewCell *customCell = (WLBaseTableViewCell *)cell;
//            [customCell fillCellContent:@{@"image":@"",@"title":@"fadsf",@"subTitle":@"",@"accessView":@""}];
//        }
//    }
    
    return cell;
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
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
