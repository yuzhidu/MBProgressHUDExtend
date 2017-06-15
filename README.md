# MBProgressHUDExtend

基于 MBProgressHUD 做了一个分类，并且支持 Cocopods，使用起来更方便 ！

## 一、添加 MBProgressHUDExtend 到工程中

使用 CocoaPods

1. 在 Podfile 中添加 `pod 'MBProgressHUDExtend'`
2. 用终端执行 `pod install`
3. 导入头文件 `#import "MBProgressHUDExtend.h"`


## 二、方法

HUD 自动消失
```objectivec
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
```

使用ActivityIndicatorView
```objectivec
/** 手动消失：菊花 */
+ (MBProgressHUD *)showActivityIndicator;
/** 手动消失：菊花(放在指定view中) */
+ (MBProgressHUD *)showActivityIndicatorInView:(UIView *)view;
/** 手动消失：菊花和文字 */
+ (MBProgressHUD *)showActivityIndicatorWithTip:(NSString *)tip;
/** 手动消失：菊花和文字(放到指定view中) */
+ (MBProgressHUD *)showActivityIndicatorWithTip:(NSString *)tip
                                         inView:(UIView *)view;
```

HUD 手动消失
```objectivec
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

```

隐藏方法
```objectivec
/** 隐藏HUD(HUD在Window中) */
+ (void)hideHUD;
/** 隐藏HUD(HUD在指定view中) */
+ (void)hideHUDInView:(UIView *)view;
```

