//
//  WLTableView.h
//  CreditChina
//
//  Created by 王磊 on 2019/1/30.
//  Copyright © 2019 wanglei. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol wlTableViewDelegate <NSObject>
- (void)wlTableView: (UITableView *)tableView didSelectCellAtIndexPath: (NSIndexPath *)indexPath;

@end

NS_ASSUME_NONNULL_BEGIN

@interface WLTableView : UIView

@property (nonatomic, strong) Class cellClass;
@property (nonatomic, strong) NSArray *rowsData;
@property (nonatomic, weak) id<wlTableViewDelegate> delegate;

- (void)registNibForCell: (NSString *)nibName;

@end

NS_ASSUME_NONNULL_END
