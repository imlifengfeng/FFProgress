//
//  FFProgress.m
//  FFProgressDemo
//
//  Created by 李峰峰 on 2017/3/6.
//  Copyright © 2017年 李峰峰. All rights reserved.
//

#import "FFProgress.h"

@interface FFProgress()

@property(nonatomic,strong)NSString *progressStr;

@end

@implementation FFProgress

-(void)setProgress:(CGFloat)progress{
    
    _progress = progress;
    self.progressStr = [NSString stringWithFormat:@"%.1f%%",_progress*100];
    
    [self setNeedsDisplay];
    
}


- (void)drawRect:(CGRect)rect {
    
    if (_progressLineWidth == 0) {
        _progressLineWidth = 4;
    }
    
    //绘制外部圆环
    CGFloat endA = -M_PI_2 + M_PI * self.progress * 2;
    CGFloat radius = self.frame.size.width > self.frame.size.height ? self.frame.size.height/2 : self.frame.size.width/2;
    CGFloat fixRadius = _progressLineWidth/2;
    
    
    //创建贝塞尔曲线
    UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:CGPointMake(self.frame.size.width/2, self.frame.size.height/2)
                                                        radius:radius - fixRadius
                                                    startAngle:-M_PI_2
                                                      endAngle:endA clockwise:YES];
    
    [path setLineWidth:_progressLineWidth];
    
    if (_progressColor == nil) {
        _progressColor = [UIColor colorWithRed:0.17 green:0.69 blue:0.55 alpha:1.00];
    }
    [_progressColor setStroke];
    
    [path stroke];
    
    if(_showProgressLabel){
        //绘制圆环内进度数字
        NSMutableDictionary *dict = [NSMutableDictionary dictionary];
        //设置字体
        if (_textFont == nil) {
            _textFont = [UIFont systemFontOfSize:radius/4];
        }
         dict[NSFontAttributeName] = _textFont;
        
        //设置颜色
        if (_textColor == nil) {
            _textColor = [UIColor blackColor];
        }
        dict[NSForegroundColorAttributeName] = _textColor;
        
        CGSize textSize = [self sizeForString:self.progressStr font:_textFont maxWidth:(radius - fixRadius) * 2];
        
        CGFloat drawRectW = textSize.width;
        CGFloat drawRectH = textSize.height;
        CGFloat drawRectX = (self.frame.size.width - drawRectW)/2;
        CGFloat drawRectY = (self.frame.size.height - drawRectH)/2;
        
        [self.progressStr drawInRect:CGRectMake(drawRectX, drawRectY, drawRectW, drawRectH) withAttributes:dict];
    }
    

}


/**
 根据文字获取文字的Size

 @param content 文字内容
 @param font 文字字体
 @param maxWidth 文字最大宽度
 @return 文字Size
 */
- (CGSize)sizeForString:(NSString*)content font:(UIFont*)font maxWidth:(CGFloat) maxWidth{
    if (!content || content.length == 0) {
        return CGSizeMake(0, 0);
    }
    
    NSMutableParagraphStyle* paragraphStyle = [[NSMutableParagraphStyle defaultParagraphStyle] mutableCopy];
    paragraphStyle.lineBreakMode = NSLineBreakByWordWrapping;
    paragraphStyle.alignment = NSTextAlignmentLeft;
    
    
    CGSize contentSize = [content boundingRectWithSize:CGSizeMake(maxWidth, CGFLOAT_MAX)
                                               options:NSStringDrawingUsesLineFragmentOrigin
                                            attributes:@{NSParagraphStyleAttributeName : paragraphStyle,
                                                         NSFontAttributeName : font}
                                               context:nil].size;
    
    return contentSize;
}



@end
