# FFProgress
A simple download progress view extension that is drawn using Quartz2D

![gif](https://github.com/imlifengfeng/FFProgress/blob/master/screenshots/demo.gif)

#Instructions
Import the header file：
```objective-c
#import "FFProgress.h"
```

Followed by a direct initialization of a FFProgress, for example：
```objective-c
FFProgress *myProgress = [[FFProgress alloc]initWithFrame:CGRectMake(progress1X, progress1Y, progress1W, progress1H)];
```
FFProgress will draw frames according to the specific frame

Then set some properties for FFProgress as needed：
```objective-c
//Ring color
@property(nonatomic,strong)UIColor *progressColor;
//The width of the ring line (thickness)
@property (nonatomic,assign)CGFloat progressLineWidth;
//The font of the internal text
@property(nonatomic,strong)UIFont *textFont;
//The color of the internal text
@property(nonatomic,strong)UIColor *textColor;
//Whether to display internal text
@property (nonatomic,assign)BOOL showProgressLabel;
```

Set the progress of FFProgress：
```objective-c
//progress
@property (nonatomic,assign)CGFloat progress;
```
for example：
```objective-c
myProgress.progress = 0.5;
```



#使用方法
导入头文件：
```objective-c
#import "FFProgress.h"
```

之后直接初始化一个FFProgress，例如：
```objective-c
FFProgress *myProgress = [[FFProgress alloc]initWithFrame:CGRectMake(progress1X, progress1Y, progress1W, progress1H)];
```
FFProgress会根据具体的frame自适应绘制frame

之后根据需要为FFProgress设置一些属性：
```objective-c
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
```

设置FFProgress的进度：
```objective-c
//进度
@property (nonatomic,assign)CGFloat progress;
```
例如：
```objective-c
myProgress.progress = 0.5;
```
