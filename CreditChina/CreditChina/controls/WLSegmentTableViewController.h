//
//  WLSegmentTableViewController.h
//  CreditChina
//
//  Created by 王磊 on 2019/1/31.
//  Copyright © 2019 wanglei. All rights reserved.
//

#import "WLBaseUIViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface WLSegmentTableViewController : WLBaseUIViewController

@property (nonatomic, strong) NSArray *titles;
@property (nonatomic, strong) NSArray *controllers;

@end

NS_ASSUME_NONNULL_END
