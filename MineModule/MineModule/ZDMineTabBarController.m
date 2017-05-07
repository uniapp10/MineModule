//
//  ZDMineTabBarController.m
//  MineModule
//
//  Created by zhudong on 2017/5/6.
//  Copyright © 2017年 zhudong. All rights reserved.
//

#import "ZDMineTabBarController.h"
#import <LoginModule.h>
#import "ZDMineViewController.h"

@interface ZDMineTabBarController ()

@end

@implementation ZDMineTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self addController:[[LoginController alloc] init] title:@"登录" imageName:@"send" seletedImageName:@"sending"];
    [self addController:[[ZDMineViewController alloc] init] title:@"我的" imageName:@"mine_unselect" seletedImageName:@"mine_select"];
}

- (void)addController:(UIViewController *)vc title: (NSString *)title imageName: (NSString *)imageN seletedImageName: (NSString *)sImageN{
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc];
    ;
    UITabBarItem *tabBarItem = [[UITabBarItem alloc] initWithTitle:title image: [[UIImage imageNamed:imageN] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]selectedImage:[[UIImage imageNamed: sImageN] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    nav.tabBarItem = tabBarItem;
    [self addChildViewController:nav];
}

@end
