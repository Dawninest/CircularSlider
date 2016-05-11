//
//  MTTCircularSlider.h
//  圆形控制器模拟
//
//  Created by 蒋一博 on 16/4/1.
//  Copyright © 2016年 JiangYibo. All rights reserved.
//

#import <UIKit/UIKit.h>



@interface MTTCircularSlider : UIControl

#pragma mark -UI Attribute
@property (nonatomic, getter=isCirculate) BOOL circulate; //设置是否连通循环滑动,默认:NO


#pragma mark -MTTCircularSliderStyleImage
@property (nonatomic, strong) UIImage* selectImage; //已选中进度图片
@property (nonatomic, strong) UIImage* unselectImage; //已选中进度图片
@property (nonatomic, strong) UIImage* indicatorImage; //指示器图片

#pragma mark -Angle
@property (nonatomic) NSInteger angle; //当前角度,默认:0
@property (nonatomic) NSInteger maxAngle; //最大角度,默认:360
@property (nonatomic) NSInteger minAngle; //最小角度,默认:0

#pragma mark -Value
@property (nonatomic) CGFloat value; //当前数值,默认:0
@property (nonatomic) CGFloat minValue; //最小数值,默认:0
@property (nonatomic) CGFloat maxValue; //最大数值,默认:1

@end
