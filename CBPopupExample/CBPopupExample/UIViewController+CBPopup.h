//
//  UIViewController+CBPopup.h
//  show
//
//  Created by changcun on 21/12/2017.
//  Copyright © 2017 changba. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, CBPopupViewAnimation) {
    CBPopupViewAnimationFade = 0,
    CBPopupViewAnimationSlideFromBottom,
    CBPopupViewAnimationSlideFromTop,
    CBPopupViewAnimationSlideFromLeft,
    CBPopupViewAnimationSlideFromRight
};

typedef NS_ENUM(NSInteger, CBPopupViewAligment) {
    CBPopupViewAligmentCenter = 0,
    CBPopupViewAligmentTop,
    CBPopupViewAligmentBottom
};

@interface UIViewController (CBPopup)

- (void)cb_presentPopupViewController:(UIViewController*)popupViewController;

- (void)cb_presentPopupViewController:(UIViewController*)popupViewController
                            dismissed:(void(^)(void))dismissed;

- (void)cb_presentPopupViewController:(UIViewController*)popupViewController
                        animationType:(CBPopupViewAnimation)animationType;

- (void)cb_presentPopupViewController:(UIViewController*)popupViewController
                        animationType:(CBPopupViewAnimation)animationType
                            dismissed:(void(^)(void))dismissed;

- (void)cb_presentPopupViewController:(UIViewController*)popupViewController
                        animationType:(CBPopupViewAnimation)animationType
                             aligment:(CBPopupViewAligment)aligment
                            dismissed:(void(^)(void))dismissed;

- (void)cb_dismissPopupViewControllerAnimated:(BOOL)animated;
- (void)cb_dismissPopupViewControllerToRootAnimated:(BOOL)animated;

@end
