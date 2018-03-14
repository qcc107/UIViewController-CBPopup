//
//  DetailViewController.h
//  CBPopupExample
//
//  Created by changcun on 2018/3/13.
//  Copyright © 2018年 com.qcc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIViewController+CBPopup.h"

@interface DetailViewController : UIViewController

@property (assign, nonatomic) CBPopupViewAligment popAligment;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

