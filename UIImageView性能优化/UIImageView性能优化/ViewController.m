//
//  ViewController.m
//  UIImageView性能优化
//
//  Created by 张江东 on 16/10/25.
//  Copyright © 2016年 58kuaipai. All rights reserved.
//

#import "ViewController.h"
#import "UIImageView+WebCache.h"
#import "UIImage+Extension.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIImageView *img = [[UIImageView alloc] initWithFrame:CGRectMake(100, 200, 200, 300)];
    
    //1. 本地裁剪
//    UIImage *image = [UIImage imageNamed:@"003.jpg"];
//    image =  [image rightSizeImage:image andSize:img.bounds.size];
//    img.image = image;
    
    //2. 不带圆角 网络请求
//    [img sd_setImageWithURL:[NSURL URLWithString:@"http://s6.mogujie.cn/b7/bao/130928/c7k0_kqyw6vckkfbgeq3wgfjeg5sckzsew_500x750.jpg_200x999.jpg"] placeholderImage:[UIImage imageNamed:@"loading.png"] size:CGSizeMake(img.bounds.size.width, img.bounds.size.height)];
    
    
    //3. 带圆角 网络请求
    [img sd_setImageWithURL:[NSURL URLWithString:@"http://s6.mogujie.cn/b7/bao/130928/c7k0_kqyw6vckkfbgeq3wgfjeg5sckzsew_500x750.jpg_200x999.jpg"] placeholderImage:[UIImage imageNamed:@"loading.png"] size:CGSizeMake(img.bounds.size.width, img.bounds.size.height) cornerRadius:10 fillColor:[UIColor whiteColor]];
    
    
    
    [self.view addSubview:img];}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
