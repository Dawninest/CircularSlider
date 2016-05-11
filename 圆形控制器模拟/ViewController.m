//
//  ViewController.m
//  圆形控制器模拟
//
//  Created by 蒋一博 on 16/4/1.
//  Copyright © 2016年 JiangYibo. All rights reserved.
//

#import "ViewController.h"
#import "MTTCircularSlider.h"

@interface ViewController ()<UIScrollViewDelegate>


@property (nonatomic, strong) UILabel* valueLabel;

@property (nonatomic, strong) MTTCircularSlider* imageSlider;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];

    
    _imageSlider = [[MTTCircularSlider alloc] init];
    _imageSlider.bounds = CGRectMake(0, 0, 346/1.2, 353/1.2);
    
    _imageSlider.center = self.view.center;
    _imageSlider.maxAngle = 360 ;
    _imageSlider.minAngle = 0;
    _imageSlider.angle = 360 * 0.1;
    _imageSlider.value = 0;
    
    _imageSlider.selectImage = [UIImage imageNamed:@"unselect-d.png"];
    _imageSlider.unselectImage = [UIImage imageNamed:@"select-d.png"];
    _imageSlider.indicatorImage = [UIImage imageNamed:@"indicator-d.png"];
    _imageSlider.circulate = NO;
    
    [_imageSlider addTarget:self action:@selector(sliderValueChanged:) forControlEvents:UIControlEventValueChanged];
    [_imageSlider addTarget:self action:@selector(sliderEditingDidEnd:) forControlEvents:UIControlEventEditingDidEnd];
    
    [self.view addSubview:_imageSlider];
    
    
    _valueLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 100, self.view.frame.size.width, 40)];
    _valueLabel.textAlignment = NSTextAlignmentCenter;
    _valueLabel.font = [UIFont fontWithName:@"DBLCDTempBlack" size:30];
    _valueLabel.textColor = [UIColor blackColor];
    _valueLabel.text = [NSString stringWithFormat:@"%.1f", _imageSlider.value * 100];

    [self.view addSubview:_valueLabel];
    
}

- (void)sliderValueChanged:(MTTCircularSlider*)slider
{
    
    _valueLabel.text = [NSString stringWithFormat:@"%.1f", slider.value * 100];
   
}
- (void)sliderEditingDidEnd:(MTTCircularSlider*)slider
{
    self.valueLabel.text = [NSString stringWithFormat:@"%.1f", slider.value * 100];
    
}


@end
