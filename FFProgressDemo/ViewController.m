//
//  ViewController.m
//  FFProgressDemo
//
//  Created by 李峰峰 on 2017/3/6.
//  Copyright © 2017年 李峰峰. All rights reserved.
//

#import "ViewController.h"
#import "FFProgress.h"

#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIView *topContentView;

@property(nonatomic,strong)FFProgress *progress1;
@property(nonatomic,strong)FFProgress *progress2;
@property(nonatomic,strong)FFProgress *progress3;
@property(nonatomic,strong)FFProgress *progress4;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CGFloat progress1W = SCREEN_WIDTH/2 - 40;
    CGFloat progress1H = progress1W;
    CGFloat progress1X = (SCREEN_WIDTH/2 - progress1W)/2;
    CGFloat progress1Y = 10;
    _progress1 = [[FFProgress alloc]initWithFrame:CGRectMake(progress1X, progress1Y, progress1W, progress1H)];
    [self.topContentView addSubview:_progress1];
    _progress1.backgroundColor = [UIColor whiteColor];
    _progress1.showProgressLabel = YES;
    
    _progress2 = [[FFProgress alloc]initWithFrame:CGRectMake(progress1X + SCREEN_WIDTH/2, progress1Y, progress1W, progress1H)];
    [self.topContentView addSubview:_progress2];
    _progress2.backgroundColor = [UIColor whiteColor];
    _progress2.progressColor = [UIColor colorWithRed:0.99 green:0.36 blue:0.28 alpha:1.00];
    _progress2.textColor = [UIColor colorWithRed:0.99 green:0.36 blue:0.28 alpha:1.00];
    _progress2.showProgressLabel = YES;
    
    _progress3 = [[FFProgress alloc]initWithFrame:CGRectMake(progress1X, progress1Y + progress1H + 20, progress1W, progress1H)];
    [self.topContentView addSubview:_progress3];
    _progress3.backgroundColor = [UIColor whiteColor];
    _progress3.progressColor = [UIColor colorWithRed:0.99 green:0.53 blue:0.14 alpha:1.00];
    _progress3.textColor = [UIColor colorWithRed:0.99 green:0.53 blue:0.14 alpha:1.00];
    _progress3.textFont = [UIFont systemFontOfSize:35];
    _progress3.progressLineWidth = 10;
    _progress3.showProgressLabel = YES;
    
    _progress4 = [[FFProgress alloc]initWithFrame:CGRectMake(progress1X + SCREEN_WIDTH/2, progress1Y + progress1H + 20, progress1W, progress1H)];
    [self.topContentView addSubview:_progress4];
    _progress4.backgroundColor = [UIColor whiteColor];
    _progress4.progressColor = [UIColor colorWithRed:0.30 green:0.42 blue:0.47 alpha:1.00];
    _progress4.progressLineWidth = 10;
    _progress4.showProgressLabel = NO;

    
}

- (IBAction)sliderValueChange:(UISlider *)sender {
    
    _progress1.progress = sender.value;
    _progress2.progress = sender.value;
    _progress3.progress = sender.value;
    _progress4.progress = sender.value;
    
}



@end
