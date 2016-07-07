//
//  ViewController.m
//  LoopScroll
//
//  Created by 王程鹏 on 16/7/7.
//  Copyright © 2016年 baling. All rights reserved.
//

#import "ViewController.h"
#import "WCPLoopScrollView.h"

@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self createLoopScrollView];
}


- (void)createLoopScrollView
{
    WCPLoopScrollView *loopView=[[WCPLoopScrollView alloc]initWithFrame:self.view.bounds];
    [self.view addSubview:loopView];
    //是否自动滚动
    loopView.autoScroll=YES;
    //页数
    loopView.pageCount=5;
    //是否显示pageControl
    loopView.showPageControl=YES;
    
    for (int i=0; i<5; i++)
    {
        NSString *imgString=[NSString stringWithFormat:@"Welcome_3.0_%d.jpg",i+1];
        //本地图片
        [loopView setImage:[UIImage imageNamed:imgString] atIndex:i];
        NSLog(@"%@",imgString);
        //网络图片
        //loopView setImageWithUrlString:<#(NSString *)#> atIndex:<#(int)#>
    }
    
    //每张图片点击事件处理
    [loopView setClickAction:^(UIImageView *imageView, int index)
    {
        NSLog(@"点击了第%d张图片",index+1);
    }];
    
    
    
    
}








- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
