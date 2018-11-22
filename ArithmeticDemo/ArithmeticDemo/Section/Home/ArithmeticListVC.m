//
//  ArithmeticListVC.m
//  ArithmeticDemo
//
//  Created by ddSoul on 2018/11/21.
//  Copyright © 2018 dxl. All rights reserved.
//

#import "ArithmeticListVC.h"
#import "SelectSortVC.h"
#import "BubbleSortVC.h"
#import "Masonry.h"

@interface ArithmeticListVC ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, strong) UITableView *listView;

@end

@implementation ArithmeticListVC

#pragma mark - life cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    [self initUI];
}

#pragma mark - initUI
- (void)initUI {
    
    self.title = @"列表";
    self.view.backgroundColor = UIColor.whiteColor;
    
    [self.view addSubview:self.listView];
    [self layoutCustomViews];
}
- (void)layoutCustomViews {
    [self.listView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.bottom.top.mas_equalTo(0);
    }];
}

#pragma mark - delegate Methods
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self listData].count;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 55;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    cell.textLabel.text = [self listData][indexPath.row];
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if (0 == indexPath.row) {
        BubbleSortVC *bubbleSortVC = [[BubbleSortVC alloc] init];
        [self.navigationController pushViewController:bubbleSortVC animated:YES];
    }else if (1 == indexPath.row) {
        SelectSortVC *selectSortVC = [[SelectSortVC alloc] init];
        [self.navigationController pushViewController:selectSortVC animated:YES];
    }

}

#pragma mark - custom Methods
- (NSArray *)listData {
    return @[@"冒泡",@"选择",@"???",@"???",@"???"];
}

#pragma mark - touch events

#pragma mark - setter,getter
- (UITableView *)listView {
    if (!_listView) {
        _listView = [[UITableView alloc] init];
        _listView.delegate = self;
        _listView.dataSource = self;
        
        [_listView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    }
    return _listView;
}
@end
