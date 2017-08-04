//
//  YWCornerRadius.h
//  YWArt
//
//  Created by 杨晓宇 on 2017/8/4.
//  Copyright © 2017年 thou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface YWCornerRadius : NSObject
/*
 *需要先添加到视图在使用此方法
 *parma:view
 *parma:radius
 */
- (void)thouCornerRadiusWihView:(UIView *)view andRadius:(CGFloat)radius;

@end
