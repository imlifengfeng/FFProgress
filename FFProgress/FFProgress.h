//
//  FFProgress.h
//  FFProgressDemo
//
//  Created by 李峰峰 on 2017/3/6.
//  Copyright © 2017年 李峰峰. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FFProgress : UIView

//圆环颜色
@property(nonatomic,strong)UIColor *progressColor;
//圆环线条的宽度（粗细）
@property (nonatomic,assign)CGFloat progressLineWidth;
//内部文字的字体
@property(nonatomic,strong)UIFont *textFont;
//内部文字的颜色
@property(nonatomic,strong)UIColor *textColor;
//是否显示内部文字
@property (nonatomic,assign)BOOL showProgressLabel;

//进度
@property (nonatomic,assign)CGFloat progress;

@end
