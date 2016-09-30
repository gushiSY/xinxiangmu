//
//  TextViewController.m
//  ZJScrollPageView
//
//  Created by jasnig on 16/5/7.
//  Copyright © 2016年 ZeroJ. All rights reserved.
//

#import "ZJTestViewController.h"
#import "FrameMainLFL.h"
#import "MBProgressHUD.h"
#import "brandInfoModel.h"
#import "brandCell.h"

@interface ZJTestViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic,weak) UITableView * brandTbView;

@end

@implementation ZJTestViewController
//- (IBAction)testBtnOnClick:(UIButton *)sender {
//    
//}


- (void)setUpWhenViewWillAppearForTitle:(NSString *)title forIndex:(NSInteger)index firstTimeAppear:(BOOL)isFirstTime {
    if (isFirstTime) {
        if ([title isEqualToString:@"国际要闻"]) {
            NSLog(@"加载'国际要闻'相关的内容");
        }
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UITableView * brandView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, DEVICE_WIDTH, DEVICE_HEIGHT-64-80-49)];
    self.brandTbView = brandView;
    self.brandTbView.delegate = self;
    self.brandTbView.dataSource = self;
    
}

//-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
//    brandCell * cell = [brandCell brandWithTableView:tableView];
//    
//}



- (void)dealloc
{
    NSLog(@"%@-----test---销毁", self.description);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
