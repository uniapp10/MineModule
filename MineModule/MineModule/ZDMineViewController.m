//
//  ZDMineViewController.m
//  MineModule
//
//  Created by zhudong on 2017/5/6.
//  Copyright © 2017年 zhudong. All rights reserved.
//

#import "ZDMineViewController.h"

@interface ZDMineViewController ()<UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UIImageView *iconV;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic,strong) NSArray *titles;

@end

@implementation ZDMineViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.titles.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    cell.textLabel.text = self.titles[indexPath.row];
    return cell;
}

- (NSArray *)titles{
    if (!_titles) {
        _titles = @[@"姓名", @"年龄", @"住址", @"电话", @"性别", ];
    }
    return _titles;
}
@end
