//
//  MasterViewController.m
//  CBPopupExample
//
//  Created by changcun on 2018/3/13.
//  Copyright © 2018年 com.qcc. All rights reserved.
//

#import "MasterViewController.h"
#import "DetailViewController.h"
#import "UIViewController+CBPopup.h"

@interface MasterViewController ()

@property (copy, nonatomic) NSDictionary *objects;
@end

@implementation MasterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    self.objects = @{@"AligmentTop":@(CBPopupViewAligmentTop),
                     @"AligmentCenter":@(CBPopupViewAligmentCenter),
                     @"AligmentBottom":@(CBPopupViewAligmentBottom),
                     };

//    self.detailViewController = (DetailViewController *)[[self.splitViewController.viewControllers lastObject] topViewController];
}


- (void)viewWillAppear:(BOOL)animated {
    self.clearsSelectionOnViewWillAppear = self.splitViewController.isCollapsed;
    [super viewWillAppear:animated];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Segues

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"showDetail"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        DetailViewController *controller = (DetailViewController *)[[segue destinationViewController] topViewController];
        controller.popAligment = [self.objects.allValues[indexPath.row] integerValue];
        controller.navigationItem.leftItemsSupplementBackButton = YES;
        controller.title = self.objects.allKeys[indexPath.row];
    }
}


#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.objects.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];

    NSString *titile = self.objects.allKeys[indexPath.row];
    cell.textLabel.text = titile;
    return cell;
}

@end
