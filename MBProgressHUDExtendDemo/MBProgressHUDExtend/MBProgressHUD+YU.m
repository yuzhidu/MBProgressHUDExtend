//
//  HUD是用来显示提示的，可以只显示菊花（一张自传的图片），或者只显示文字，或者文字和图片
//
//  关注微博：裕之都
//  微博地址：http://weibo.com/gou9527
//
//  Github：https://github.com/yuzhidu
//
//  推荐图片大小 100x100像素 @2x
//             150x150像素 @3x
//  基于 MBProgressHUD 1.0.0 版本

#import "MBProgressHUD+YU.h"

// 正常是2秒
static const CGFloat kTime = 2.0f;
static const CGFloat kTitleFontSize = 16.f;

@implementation MBProgressHUD (YU)

/** 自动消失：文字 */
+ (void)showTipAutoHide:(NSString *)tip {
    [self showTipAutoHide:tip icon:nil inView:nil];
}
/** 自动消失：文字(放到指定view中) */
+ (void)showTipAutoHide:(NSString *)tip inView:(UIView *)view {
    [self showTipAutoHide:tip icon:nil inView:view];
}

/** 自动消失：图片 */
+ (void)showIconAutoHide:(NSString *)icon {
    [self showTipAutoHide:nil icon:icon inView:nil];
}
/** 自动消失：图片(放到指定view中) */
+ (void)showIconAutoHide:(NSString *)icon
                  inView:(UIView *)view {
    [self showTipAutoHide:nil icon:icon inView:view];
}

/** 自动消失：文字和图片 */
+ (void)showTipAutoHide:(NSString *)tip icon:(NSString *)icon {
    [self showTipAutoHide:tip icon:icon inView:nil];
}
/** 自动消失：文字和图片(放到指定view中) */
+ (void)showTipAutoHide:(NSString *)tip icon:(NSString *)icon inView:(UIView *)view {
    if (view == nil) {
        view = [[UIApplication sharedApplication].windows firstObject];
    }
    // 快速显示一个提示信息
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
    
    // 设置模式
    hud.mode = MBProgressHUDModeCustomView;
    // 设置图片
//    NSString *imgStr = [NSString stringWithFormat:@"MBProgressHUD.bundle/%@", icon];
    hud.customView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:icon]];
    
    hud.detailsLabel.text = tip;
    hud.detailsLabel.font = [UIFont systemFontOfSize:kTitleFontSize];
    hud.detailsLabel.textColor = [UIColor whiteColor];
    hud.minSize = CGSizeMake(100, 100);
    
    [hud.bezelView setStyle:MBProgressHUDBackgroundStyleSolidColor];
    [hud.bezelView setColor:[UIColor colorWithRed:0 green:0 blue:0 alpha:0.8f]];
    
    // backgroundView 是背景蒙版
    //    hud.backgroundView.color = [UIColor purpleColor];
    
    // 隐藏时候从父控件中移除
    hud.removeFromSuperViewOnHide = YES;
    
    // 几秒之后再消失
    [hud hideAnimated:YES afterDelay:kTime];
}


/** 手动消失：菊花 */
+ (MBProgressHUD *)showActivityIndicator {
    return [self showActivityIndicatorWithTip:nil inView:nil];
}
/** 手动消失：菊花(放在指定view中) */
+ (MBProgressHUD *)showActivityIndicatorInView:(UIView *)view {
    return [self showActivityIndicatorWithTip:nil inView:view];
}
/** 手动消失：菊花和文字 */
+ (MBProgressHUD *)showActivityIndicatorWithTip:(NSString *)tip {
    return [self showActivityIndicatorWithTip:tip inView:nil];
}
/** 手动消失：菊花和文字(放到指定view中) */
+ (MBProgressHUD *)showActivityIndicatorWithTip:(NSString *)tip inView:(UIView *)view {
    if (view == nil) {
        view = [[UIApplication sharedApplication].windows firstObject];
    }
    // 快速显示一个提示信息
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
    
    hud.label.text = tip;
    hud.label.textColor = [UIColor whiteColor];
    hud.label.font = [UIFont systemFontOfSize:kTitleFontSize];
    hud.minSize = CGSizeMake(100, 100);
    
    [hud.bezelView setStyle:MBProgressHUDBackgroundStyleSolidColor];
    [hud.bezelView setColor:[UIColor colorWithRed:0 green:0 blue:0 alpha:0.8f]];
    
    // 把包含在 MBProgressHUD 中的菊花设置为白色
    [UIActivityIndicatorView appearanceWhenContainedIn:[MBProgressHUD class], nil].color = [UIColor whiteColor];
    
    // backgroundView 是背景蒙版
    //    hud.backgroundView.color = [UIColor purpleColor];
    
    // 隐藏时候从父控件中移除
    hud.removeFromSuperViewOnHide = YES;
    
    return hud;
}


/** 手动消失：文字 */
+ (MBProgressHUD *)showTip:(NSString *)tip {
    return [self showIcon:nil tip:tip inView:nil];
}
/** 手动消失：文字(放在指定view中) */
+ (MBProgressHUD *)showTip:(NSString *)tip inView:(UIView *)view {
    return [self showIcon:nil tip:tip inView:view];
}
/** 手动消失：图片 */
+ (MBProgressHUD *)showIcon:(NSString *)icon {
    return [self showIcon:icon tip:nil inView:nil];
}
/** 手动消失：图片(放在指定view中) */
+ (MBProgressHUD *)showIcon:(NSString *)icon inView:(UIView *)view {
    return [self showIcon:icon tip:nil inView:view];
}
/** 手动消失：图片，文字 */
+ (MBProgressHUD *)showIcon:(NSString *)icon tip:(NSString *)tip {
    return [self showIcon:icon tip:tip inView:nil];
}
/** 手动消失：图片，文字(放到指定view中) */
+ (MBProgressHUD *)showIcon:(NSString *)icon tip:(NSString *)tip inView:(UIView *)view {
    if (view == nil) {
        view = [[UIApplication sharedApplication].windows firstObject];
    }
    // 快速显示一个提示信息
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
    
    // 设置模式
    hud.mode = MBProgressHUDModeCustomView;
    // 设置图片
    //    NSString *imgStr = [NSString stringWithFormat:@"MBProgressHUD.bundle/%@", icon];
    hud.customView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:icon]];
    
    hud.detailsLabel.text = tip;
    hud.detailsLabel.font = [UIFont systemFontOfSize:kTitleFontSize];
    hud.detailsLabel.textColor = [UIColor whiteColor];
    hud.minSize = CGSizeMake(100, 100);
    
    [hud.bezelView setStyle:MBProgressHUDBackgroundStyleSolidColor];
    [hud.bezelView setColor:[UIColor colorWithRed:0 green:0 blue:0 alpha:0.8f]];
    
    // backgroundView 是背景蒙版
    //    hud.backgroundView.color = [UIColor purpleColor];
    
    // 隐藏时候从父控件中移除
    hud.removeFromSuperViewOnHide = YES;
    
    return hud;
}


/** 隐藏HUD(HUD在Window中) */
+ (void)hideHUD {
    [self hideHUDInView:nil];
}
/** 隐藏HUD(HUD在指定view中) */
+ (void)hideHUDInView:(UIView *)view {
    if (view == nil) {
        view = [[UIApplication sharedApplication].windows firstObject];
    }
    [self hideHUDForView:view animated:YES];
}

@end
