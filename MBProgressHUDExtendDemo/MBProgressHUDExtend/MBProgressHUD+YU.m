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

//-------------------------显示自定义文字,几秒后消失--------------
/**  只显示文字,几秒后消失 */
+ (void)showTipAutoHide:(NSString *)tip
{
    [self showTipAutoHide:tip icon:nil inView:nil];
}
/**  只显示文字,几秒后消失(放到指定view中) */
+ (void)showTipAutoHide:(NSString *)tip inView:(UIView *)view
{
    [self showTipAutoHide:tip icon:nil inView:view];
}


//--------------------------显示自定义图片,几秒后消失--------------
/**  只显示图片,几秒后消失 */
+ (void)showIconAutoHide:(NSString *)icon
{
    [self showTipAutoHide:nil icon:icon inView:nil];
}
/**  只显示图片,几秒后消失(放到指定view中) */
+ (void)showIconAutoHide:(NSString *)icon inView:(UIView *)view
{
    [self showTipAutoHide:nil icon:icon inView:view];
}


//-------------------------显示自定义图片和文字,几秒后消失----------
/**  显示文字和图片,几秒后消失 */
+ (void)showTipAutoHide:(NSString *)tip icon:(NSString *)icon
{
    [self showTipAutoHide:tip icon:icon inView:nil];
}
/**  显示文字和图片,几秒后消失(放到指定view中) */
+ (void)showTipAutoHide:(NSString *)tip icon:(NSString *)icon inView:(UIView *)view
{
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


//--------------------------显示菊花HUD-------------------------------
/** 只显示菊花(需要主动让它消失,HUD放在Window中) */
+ (MBProgressHUD *)showActivityIndicatorView
{
    return [self showActivityIndicatorViewWithTip:nil inView:nil];
}

+ (MBProgressHUD *)showActivityIndicatorViewInView:(UIView *)view
{
    return [self showActivityIndicatorViewWithTip:nil inView:view];
}

/** 显示菊花和文字(需要主动让它消失,HUD放在Window中) */
+ (MBProgressHUD *)showActivityIndicatorViewWithTip:(NSString *)tip
{
    return [self showActivityIndicatorViewWithTip:tip inView:nil];
}

/** 显示菊花和文字(需要主动让它消失，HUD放到指定view中) */
+ (MBProgressHUD *)showActivityIndicatorViewWithTip:(NSString *)tip inView:(UIView *)view
{
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

//--------------------------显示自定义图片-------------------------------
/** 自定义图片(需要主动让它消失,HUD放在Window中) */
+ (MBProgressHUD *)showIcon:(NSString *)icon
{
    return [self showIcon:icon tip:nil inView:nil];
}
/** 自定义图片(需要主动让它消失,HUD放在指定view中) */
+ (MBProgressHUD *)showIcon:(NSString *)icon inView:(UIView *)view
{
    return [self showIcon:icon tip:nil inView:view];
}
/** 自定义图片，文字(需要主动让它消失,HUD放在Window中) */
+ (MBProgressHUD *)showIcon:(NSString *)icon tip:(NSString *)tip
{
    return [self showIcon:icon tip:tip inView:nil];
}
/** 自定义图片，文字(需要主动让它消失，HUD放到指定view中) */
+ (MBProgressHUD *)showIcon:(NSString *)icon tip:(NSString *)tip inView:(UIView *)view
{
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

//--------------------------隐藏HUD-------------------------------
/** 隐藏HUD(HUD在Window中) */
+ (void)hideHUD
{
    [self hideHUDInView:nil];
}
/** 隐藏HUD(HUD在指定view中) */
+ (void)hideHUDInView:(UIView *)view
{
    if (view == nil) {
        view = [[UIApplication sharedApplication].windows firstObject];
    }
    [self hideHUDForView:view animated:YES];
}

@end
