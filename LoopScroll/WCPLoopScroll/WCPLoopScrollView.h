//
//  WCPLoopScrollView.h
//  LoopScroll
//
//  Created by 王程鹏 on 16/7/7.
//  Copyright © 2016年 baling. All rights reserved.
//

#import <UIKit/UIKit.h>

//功能: 自动循环滚动显示多张图片
@interface WCPLoopScrollView : UIView

//需要显示的页数
@property (nonatomic) int pageCount;

//设置某个位置处的图片
-(void)setImage:(UIImage *)image atIndex:(int)index;
-(void)setImageWithUrlString:(NSString *)urlString atIndex:(int)index;

//是否自动滚动
@property (nonatomic) BOOL autoScroll;

//是否显示pageControl
@property (nonatomic) BOOL showPageControl;

@property (strong,nonatomic) UIScrollView *scrollView;
@property (strong,nonatomic) UIPageControl *pageControl;

//每张添加点击处理 - block
-(void)setClickAction:(void(^)(UIImageView *imageView, int index) )action;

@end
