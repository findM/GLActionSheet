//
//  ViewController.m
//  demo
//
//  Created by 陈光临 on 15/12/19.
//  Copyright © 2015年 cn.chenguanglin. All rights reserved.
//

#import "ViewController.h"

#import "GLActionSheet.h"

@interface ViewController ()
- (IBAction)openAction:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)openAction:(id)sender {
    [GLActionSheet showWithDataSource:@[@"我是第一条",@"我2我自豪",@"老3怎么了",@"怒射楼上一脸",@"喔喔喔"]
                                title:@"逗比集中营"
                          selectIndex:3
                        completeBlock:^(NSInteger index) {
                            NSLog(@"%ld",(long)index);
                        }];
}
@end
