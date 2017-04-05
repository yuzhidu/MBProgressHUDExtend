//
//  ViewController.m
//  MBProgressHUDExtendDemo
//
//  Created by 马裕博 on 2016/12/23.
//  Copyright © 2016年 yuzhidu. All rights reserved.
//

#import "MainViewController.h"
#import "MBProgressHUD+YU.h"
#import "IconViewController.h"

// 当前屏幕宽和高
#define kScreenWidth        ([UIScreen mainScreen].bounds.size.width)
#define kScreenHeight       ([UIScreen mainScreen].bounds.size.height)

@interface MainViewController ()<UITableViewDelegate, UITableViewDataSource>
/** 功能 */
@property (nonatomic, strong) NSMutableArray<NSString *> *arrM;
@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    UITableView *tableV = [[UITableView alloc] initWithFrame:CGRectMake(0, 20, kScreenWidth, kScreenHeight-20) style:UITableViewStylePlain];
    tableV.delegate = self;
    tableV.dataSource = self;
    [self.view addSubview:tableV];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.arrM.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *identifer = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifer];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:identifer];
    }
    cell.detailTextLabel.text = self.arrM[indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    switch (indexPath.row) {
        case 0:
            [MBProgressHUD showTipAutoHide:@"自定义文字"];
            break;
        case 1:
            [MBProgressHUD showTipAutoHide:@"自定义文字" inView:self.view];
            break;
        case 2:
            [MBProgressHUD showIconAutoHide:@"success"];
            break;
        case 3:
            [MBProgressHUD showIconAutoHide:@"error" inView:self.view];
            break;
        case 4:
            [MBProgressHUD showTipAutoHide:@"自定义文字" icon:@"1"];
            break;
        case 5:
            [MBProgressHUD showTipAutoHide:@"自定义文字" icon:@"2" inView:self.view];
            break;
        case 6:
        {
            [MBProgressHUD showActivityIndicatorWithTip:@"加载中..."];
            dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                [MBProgressHUD hideHUD];
            });
        }
            break;
            
        default:
            break;
    }
}

- (NSMutableArray<NSString *> *)arrM {
    if (_arrM == nil) {
        _arrM = [NSMutableArray array];
        
        [_arrM addObject:@"0.只显示文字,几秒后消失"];
        [_arrM addObject:@"1.只显示文字,几秒后消失(放到指定view中)"];
        
        [_arrM addObject:@"2.只显示图片,几秒后消失"];
        [_arrM addObject:@"3.只显示图片,几秒后消失(放到指定view中)"];
        
        [_arrM addObject:@"4.显示文字和图片,几秒后消失"];
        [_arrM addObject:@"5.显示文字和图片,几秒后消失(放到指定view中)"];
        
        [_arrM addObject:@"6.菊花"];
    }
    return _arrM;
}
@end
