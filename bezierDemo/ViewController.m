//
//  ViewController.m
//  bezierDemo
//
//  Created by 杨晓宇 on 2017/8/3.
//  Copyright © 2017年 com.ywart. All rights reserved.
//

#import "ViewController.h"
#import "YWCornerRadius.h"

@interface ViewController ()

@property (nonatomic, strong) UIImageView *displayView;
//@property (nonatomic, strong) YWCornerRadius *cor;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view addSubview:self.displayView];
    
    _displayView.layer.shadowColor = [UIColor blackColor].CGColor;//shadowColor阴影颜色
    _displayView.layer.shadowOffset = CGSizeMake(0,0);//shadowOffset阴影偏移，默认(0, -3),这个跟shadowRadius配合使用
    _displayView.layer.shadowOpacity = 1;//阴影透明度，默认0
    _displayView.layer.shadowRadius = 3;//阴影半径，默认3
    
    [[YWCornerRadius alloc]thouCornerRadiusWihView:self.displayView andRadius:10];
    
//    UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake(100, 250, 100, 100)];
//    [btn setImage:[UIImage imageNamed:@"1"] forState:UIControlStateNormal];
//    [self.view addSubview:btn];
//    
//    btn.layer.shadowColor = [UIColor blackColor].CGColor;//shadowColor阴影颜色
//    btn.layer.shadowOffset = CGSizeMake(0,0);//shadowOffset阴影偏移，默认(0, -3),这个跟shadowRadius配合使用
//    btn.layer.shadowOpacity = 1;//阴影透明度，默认0
//    btn.layer.shadowRadius = 3;//阴影半径，默认3
//    [[YWCornerRadius alloc]thouCornerRadiusWihView:btn andRadius:10];
//    
//    UIView *v = [[UIView alloc]initWithFrame:CGRectMake(100, 400, 100, 100)];
//    v.backgroundColor = [UIColor orangeColor];
//    [self.view addSubview:v];
//    [[YWCornerRadius alloc]thouCornerRadiusWihView:v andRadius:10];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UIImageView *)displayView
{
    if (!_displayView) {
        _displayView = [[UIImageView alloc]initWithFrame:CGRectMake(100, 100, 100, 100)];
        _displayView.image = [UIImage imageNamed:@"1"];
    }
    return _displayView;
}

@end
