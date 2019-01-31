//
//  WLSegmentTableViewController.m
//  CreditChina
//
//  Created by 王磊 on 2019/1/31.
//  Copyright © 2019 wanglei. All rights reserved.
//

#import "WLSegmentTableViewController.h"
#import "HGSegmentedPageViewController.h"
#import <Masonry.h>

@interface WLSegmentTableViewController ()

@property (nonatomic, strong) HGSegmentedPageViewController *segmentedPageViewController;



@end

@implementation WLSegmentTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self decorateUI];
}

- (void)decorateUI
{
    [self addChildViewController:self.segmentedPageViewController];
    [self.view addSubview:self.segmentedPageViewController.view];
    [self.segmentedPageViewController didMoveToParentViewController:self];
    [self.segmentedPageViewController.view mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view);
    }];
}

/*
 *设置segmentedPageViewController的categoryView以及pageViewControllers
 *这里可以对categoryView进行自定义，包括高度、背景颜色、字体颜色、字体大小、下划线高度和颜色等
 */
- (HGSegmentedPageViewController *)segmentedPageViewController
{
    if (!_segmentedPageViewController)
    {
        _segmentedPageViewController = [[HGSegmentedPageViewController alloc] init];
        _segmentedPageViewController.pageViewControllers = self.controllers;
        _segmentedPageViewController.categoryView.titles = self.titles;
        _segmentedPageViewController.categoryView.originalIndex = 0;
    }
    return _segmentedPageViewController;
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
