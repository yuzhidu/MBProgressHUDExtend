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

#import "MBProgressHUD.h"

@interface MBProgressHUD (YU)

/** 自动消失：文字 */
+ (void)showTipAutoHide:(NSString *)tip;
/** 自动消失：文字(放到指定view中) */
+ (void)showTipAutoHide:(NSString *)tip
                 inView:(UIView *)view;

/** 自动消失：图片 */
+ (void)showIconAutoHide:(NSString *)icon;
/** 自动消失：图片(放到指定view中) */
+ (void)showIconAutoHide:(NSString *)icon
                  inView:(UIView *)view;

/** 自动消失：文字和图片 */
+ (void)showTipAutoHide:(NSString *)tip
                   icon:(NSString *)icon;
/** 自动消失：文字和图片(放到指定view中) */
+ (void)showTipAutoHide:(NSString *)tip
                   icon:(NSString *)icon
                 inView:(UIView *)view;


/** 手动消失：菊花 */
+ (MBProgressHUD *)showActivityIndicator;
/** 手动消失：菊花(放在指定view中) */
+ (MBProgressHUD *)showActivityIndicatorInView:(UIView *)view;
/** 手动消失：菊花和文字 */
+ (MBProgressHUD *)showActivityIndicatorWithTip:(NSString *)tip;
/** 手动消失：菊花和文字(放到指定view中) */
+ (MBProgressHUD *)showActivityIndicatorWithTip:(NSString *)tip
                                         inView:(UIView *)view;

/** 手动消失：文字 */
+ (MBProgressHUD *)showTip:(NSString *)tip;
/** 手动消失：文字(放在指定view中) */
+ (MBProgressHUD *)showTip:(NSString *)tip
                    inView:(UIView *)view;
/** 手动消失：图片 */
+ (MBProgressHUD *)showIcon:(NSString *)icon;
/** 手动消失：图片(放在指定view中) */
+ (MBProgressHUD *)showIcon:(NSString *)icon
                     inView:(UIView *)view;
/** 手动消失：图片，文字 */
+ (MBProgressHUD *)showIcon:(NSString *)icon
                        tip:(NSString *)tip;
/** 手动消失：图片，文字(放到指定view中) */
+ (MBProgressHUD *)showIcon:(NSString *)icon
                        tip:(NSString *)tip
                     inView:(UIView *)view;

/** 隐藏HUD(HUD在Window中) */
+ (void)hideHUD;
/** 隐藏HUD(HUD在指定view中) */
+ (void)hideHUDInView:(UIView *)view;

@end
