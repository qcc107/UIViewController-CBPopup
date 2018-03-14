# UIViewController+CBPopup
## A UIViewController extension, for popup viewcontroller from center, top, bottom.
![Alt text](https://github.com/qcc107/UIViewController-CBPopup/blob/master/2018-03-14_10_06_03.gif)

## 🌟 Features

- [x] Easy to use
- [x] More than one can be popped at the same time
- [x] Three aligment supported
- [x] Optional animation

## 📲 Installation

Just add UIViewController+CBPopup.h and .m files to your project.

## 🌰 Usage
### Popup your custom viewcontroller

#### In your current viewcontroller:
```
#import "UIViewController+CBPopup.h"
```
then
```
UIViewController *vc = [UIViewController new];

vc.view.backgroundColor = [UIColor cyanColor];
vc.view.frame = CGRectMake(0, 0, 285, 250);
vc.view.layer.cornerRadius = 4.0;
vc.view.layer.masksToBounds = YES;

[self cb_presentPopupViewController:vc animationType:CBPopupViewAnimationFade aligment:CBPopupViewAligmentCenter dismissed:nil];

```

### 📴 Dismiss

```
[self cb_dismissPopupViewControllerAnimated:YES];
```
> **IMPORTANT!⚠️**
>>If you dismiss a viewcontroller, then popup another one immediately, you must use "[self cb_dismissPopupViewControllerAnimated:NO];" to dismiss the previous viewcontroller. 


### 🤓 Animation style
```
typedef NS_ENUM(NSInteger, CBPopupViewAnimation) {
    CBPopupViewAnimationFade = 0,
    CBPopupViewAnimationSlideFromBottom,
    CBPopupViewAnimationSlideFromTop,
    CBPopupViewAnimationSlideFromLeft,
    CBPopupViewAnimationSlideFromRight
};
```

### 🌿 Aligment
```
typedef NS_ENUM(NSInteger, CBPopupViewAligment) {
    CBPopupViewAligmentCenter = 0,
    CBPopupViewAligmentTop,
    CBPopupViewAligmentBottom
};
```
## 😜 Issue
If you find a bug, open an issue.