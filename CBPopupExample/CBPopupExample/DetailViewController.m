//
//  DetailViewController.m
//  CBPopupExample
//
//  Created by changcun on 2018/3/13.
//  Copyright © 2018年 com.qcc. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@property (copy, nonatomic) NSArray *buttons;

@end

@implementation DetailViewController

- (void)configureView {

    NSDictionary *objects = @{@"Fade":@(CBPopupViewAnimationFade),
                              @"SlideFromBottom":@(CBPopupViewAnimationSlideFromBottom),
                              @"SlideFromTop":@(CBPopupViewAnimationSlideFromTop),
                              @"SlideFromLeft":@(CBPopupViewAnimationSlideFromLeft),
                              @"SlideFromRight":@(CBPopupViewAnimationSlideFromRight)
                              };

    const NSInteger countPerRow = 2;
    NSInteger rowCount = (objects.count + (countPerRow - 1)) / countPerRow;
    CGFloat horizontalPadding = 15;
    CGFloat verticalPadding = 15;
    CGSize screenSize = [UIScreen mainScreen].bounds.size;

    UIView *containerView = [UIView new];
    containerView.frame = CGRectMake(0, 0, screenSize.width - 40, screenSize.width * 0.618);
    containerView.center = CGPointMake(screenSize.width * 0.5, screenSize.height * 0.5);
    [self.view addSubview:containerView];

    CGFloat buttonWidth = (containerView.bounds.size.width - horizontalPadding * (countPerRow - 1)) / countPerRow;
    CGFloat buttonHeight = (containerView.bounds.size.height - verticalPadding * (rowCount - 1)) / rowCount;

    for (int i=0; i<objects.count; ++i) {
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];

        [button setFrame:CGRectMake((buttonWidth + horizontalPadding) * (i % countPerRow),
                                    (buttonHeight + verticalPadding) * (i / countPerRow),
                                    buttonWidth,
                                    buttonHeight)];
        NSString *key = objects.allKeys[i];
        [button setTitle:key forState:UIControlStateNormal];
        button.tag = [objects[key] integerValue];
        [button setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        [button setTitleColor:[UIColor grayColor] forState:UIControlStateHighlighted];
        [button.titleLabel setFont:[UIFont systemFontOfSize:14]];
        button.layer.borderWidth = 1 / [UIScreen mainScreen].scale;
        button.layer.borderColor = [UIColor blueColor].CGColor;
        [button addTarget:self action:@selector(buttonTouchUpinside:) forControlEvents:UIControlEventTouchUpInside];

        [containerView addSubview:button];
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Actions

- (void)buttonTouchUpinside:(id)sender
{
    UIViewController *vc = [UIViewController new];
    vc.view.backgroundColor = [UIColor cyanColor];

    if (self.popAligment == CBPopupViewAligmentCenter) {
        vc.view.frame = CGRectMake(0, 0, 285, 250);
        vc.view.layer.cornerRadius = 4.0;
        vc.view.layer.masksToBounds = YES;
    }else
    {
        vc.view.frame = CGRectMake(0, 0, self.view.bounds.size.width, 250);
    }

    [self cb_presentPopupViewController:vc animationType:[sender tag] aligment:self.popAligment dismissed:nil];
}

@end
