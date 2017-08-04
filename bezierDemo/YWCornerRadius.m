//
//  YWCornerRadius.m
//  YWArt
//
//  Created by 杨晓宇 on 2017/8/4.
//  Copyright © 2017年 thou. All rights reserved.
//

#import "YWCornerRadius.h"

@implementation YWCornerRadius

- (void)thouCornerRadiusWihView:(UIView *)view andRadius:(CGFloat)radius
{
    if ([view isKindOfClass:[UIImageView class]]) {//UIImageView
        //开始对imageView进行画图
        UIGraphicsBeginImageContextWithOptions(view.bounds.size, NO, 1.0);
        //使用贝塞尔曲线画出一个圆角图
        [[UIBezierPath bezierPathWithRoundedRect:view.bounds cornerRadius:radius] addClip];
        [view drawRect:view.bounds];
        UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
        UIImageView *imgView = (UIImageView *)view;
        imgView.image = image;
        //结束画图
        UIGraphicsEndImageContext();
        
    }else if([view isKindOfClass:[UIButton class]]){//UIButton
        UIButton *btn = (UIButton *)view;
        btn.imageView.layer.cornerRadius = radius;
        
    }else if ([view isKindOfClass:[UITableView class]]){//UITableView
        UITableView *tableView = (UITableView *)view;
        tableView.layer.cornerRadius = radius;
        
    }else if ([view isKindOfClass:[UITableViewCell class]]){//UITableViewCell
        UITableViewCell *tableCell = (UITableViewCell *)view;
        tableCell.layer.cornerRadius = radius;
        
    }else if ([view isKindOfClass:[UICollectionView class]]){//UICollectionView
        UICollectionView *collectionView = (UICollectionView *)view;
        collectionView.layer.cornerRadius = radius;
        
    }else if ([view isKindOfClass:[UICollectionViewCell class]]){//UICollectionViewCell
        UICollectionViewCell *collectionCell = (UICollectionViewCell *)view;
        collectionCell.layer.cornerRadius = radius;
        
    }else{
        view.layer.cornerRadius = radius;
    }
}

@end
