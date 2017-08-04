//
//  displayView.m
//  bezierDemo
//
//  Created by 杨晓宇 on 2017/8/3.
//  Copyright © 2017年 com.ywart. All rights reserved.
//

#import "displayView.h"

@implementation displayView


//// Only override drawRect: if you perform custom drawing.
//// An empty implementation adversely affects performance during animation.
//- (void)drawRect:(CGRect)rect {
//    // Drawing code
//    UIColor *color = [UIColor redColor];
//    [color set]; //设置线条颜色
//    
//    UIBezierPath *path = [UIBezierPath bezierPath];
//    path.lineWidth = 5;
//    path.lineCapStyle = kCGLineCapRound;//线条拐角
//    path.lineJoinStyle = kCGLineCapRound;//终点处理
//    [path moveToPoint:CGPointMake(100, 100)];//起点
//    [path addLineToPoint:CGPointMake(200, 100)];//1
//    [path addLineToPoint:CGPointMake(200, 200)];//2
//    [path addLineToPoint:CGPointMake(100, 200)];//3
//    [path closePath];   //最后一条线通过close实现
//    [path stroke];
////    self.clipsToBounds = YES;
//}


@end
