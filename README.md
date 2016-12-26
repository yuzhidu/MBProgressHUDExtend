# MBProgressHUDExtend

基于 MBProgressHUD 做了一个分类，使用更方便，并且加入 Cocopods ！

## Adding MBProgressHUDExtend to your project

### CocoaPods

[CocoaPods](http://cocoapods.org) is the recommended way to add MBProgressHUDExtend to your project.

1. Add a pod entry for MBProgressHUDExtend to your Podfile `pod 'MBProgressHUDExtend'`
2. Install the pod(s) by running `pod install`.
3. Include MBProgressHUDExtend wherever you need it with `#import "MBProgressHUDExtend.h"`.


## 可以使用的方法

```
//-------------------------显示自定义文字,几秒后消失---------------------------
/**  只显示文字,几秒后消失 */
+ (void)showTipAutoHide:(NSString *)tip;
/**  只显示文字,几秒后消失(放到指定view中) */
+ (void)showTipAutoHide:(NSString *)tip inView:(UIView *)view;

//-------------------------显示自定义图片,几秒后消失---------------------------
/**  只显示图片,几秒后消失 */
+ (void)showIconAutoHide:(NSString *)icon;
/**  只显示图片,几秒后消失(放到指定view中) */
+ (void)showIconAutoHide:(NSString *)icon inView:(UIView *)view;

//-------------------------显示自定义图片和文字,几秒后消失-----------------------
/**  显示文字和图片,几秒后消失 */
+ (void)showTipAutoHide:(NSString *)tip icon:(NSString *)icon;
/**  显示文字和图片,几秒后消失(放到指定view中) */
+ (void)showTipAutoHide:(NSString *)tip icon:(NSString *)icon inView:(UIView *)view;


//--------------------------显示菊花,需要主动让它消失-------------------------------
/** 只显示菊花(放在Window中) */
+ (MBProgressHUD *)showActivityIndicatorView;
/** 只显示菊花(放在指定view中) */
+ (MBProgressHUD *)showActivityIndicatorViewInView:(UIView *)view;
/** 显示菊花和文字(放在Window中) */
+ (MBProgressHUD *)showActivityIndicatorViewWithTip:(NSString *)tip;
/** 显示菊花和文字(HUD放到指定view中) */
+ (MBProgressHUD *)showActivityIndicatorViewWithTip:(NSString *)tip inView:(UIView *)view;

//--------------------------显示自定义图片,需要主动让它消失-------------------------------
/** 自定义图片(放在Window中) */
+ (MBProgressHUD *)showIcon:(NSString *)icon;
/** 自定义图片(放在指定view中) */
+ (MBProgressHUD *)showIcon:(NSString *)icon inView:(UIView *)view;
/** 自定义图片，文字(放在Window中) */
+ (MBProgressHUD *)showIcon:(NSString *)icon tip:(NSString *)tip;
/** 自定义图片，文字(放到指定view中) */
+ (MBProgressHUD *)showIcon:(NSString *)icon tip:(NSString *)tip inView:(UIView *)view;

//--------------------------隐藏HUD-------------------------------
/** 隐藏HUD(HUD在Window中) */
+ (void)hideHUD;
/** 隐藏HUD(HUD在指定view中) */
+ (void)hideHUDInView:(UIView *)view;
```


