![](Resources/title.jpg)

[![language](https://img.shields.io/badge/Language-Objective--C-7D6FFF.svg)](https://developer.apple.com/documentation/objectivec)&nbsp;
[![language](https://img.shields.io/badge/Language-Swift-6986FF.svg)](https://github.com/apple/swift)&nbsp;
[![Build Status](https://api.travis-ci.org/Lision/LSAnimator.svg?branch=master)](https://travis-ci.org/Lision/LSAnimator)&nbsp;
[![Support](https://img.shields.io/badge/support-iOS%209%2B%20-orange.svg?style=flat)](https://www.apple.com/nl/ios/)

# Using
![](Resources/animation.gif)

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
```objc
#import "UIViewController+CBPopup.h"
```
then
```objc
UIViewController *vc = [UIViewController new];

vc.view.backgroundColor = [UIColor cyanColor];
vc.view.frame = CGRectMake(0, 0, 285, 250);
vc.view.layer.cornerRadius = 4.0;
vc.view.layer.masksToBounds = YES;

[self cb_presentPopupViewController:vc animationType:CBPopupViewAnimationFade aligment:CBPopupViewAligmentCenter overlayDismissed:nil];

```

### 📴 Dismiss

```objc
[self cb_dismissPopupViewControllerAnimated:YES completion:nil];
```
> **IMPORTANT!⚠️**
>>If you dismiss a viewcontroller, then popup another one immediately, you must use "[self cb_dismissPopupViewControllerAnimated:NO completion:nil];" to dismiss the previous viewcontroller. 


### 🤓 Animation style
```objc
typedef NS_ENUM(NSInteger, CBPopupViewAnimation) {
    CBPopupViewAnimationFade = 0,
    CBPopupViewAnimationSlideFromBottom,
    CBPopupViewAnimationSlideFromTop,
    CBPopupViewAnimationSlideFromLeft,
    CBPopupViewAnimationSlideFromRight
};
```

### 🌿 Aligment
```objc
typedef NS_ENUM(NSInteger, CBPopupViewAligment) {
    CBPopupViewAligmentCenter = 0,
    CBPopupViewAligmentTop,
    CBPopupViewAligmentBottom
};
```
## 😜 Issue
If you find a bug, open an issue.