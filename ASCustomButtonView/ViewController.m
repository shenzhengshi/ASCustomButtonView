//
//  ViewController.m
//  ASCustomButtonView
//
//  Created by Mac on 2020/1/7.
//  Copyright © 2020 Mac. All rights reserved.
//

#import "ViewController.h"
#import "ASCustomButtonView.h"

@interface ViewController ()

@property (nonatomic, strong) ASCustomButtonView * customButtonView1;
@property (nonatomic, strong) ASCustomButtonView * customButtonView2;
@property (nonatomic, strong) ASCustomButtonView * customButtonView3;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    self.customButtonView1.frame = CGRectMake(100, 100, 300, 50);
    [self.view addSubview:self.customButtonView1];
    
    self.customButtonView2.frame = CGRectMake(200, 200, 300, 50);
    [self.view addSubview:self.customButtonView2];
    
    self.customButtonView3.frame = CGRectMake(100, 300, 300, 50);
    [self.view addSubview:self.customButtonView3];
    
}

- (void)customButtonView1Click {
    
    NSLog(@"-----customButtonView1Click----1");
}

- (void)customButtonView2Click {
    
    NSLog(@"-----customButtonView2Click----2");
}

- (void)customButtonView3Click {
    
    NSLog(@"-----customButtonView3Click----3");
}

- (ASCustomButtonView *)customButtonView1 {
    if (!_customButtonView1) {
        __weak typeof(self) weakSelf = self;
        _customButtonView1 = [[ASCustomButtonView alloc] initCustomButtonViewWithIconName:@"CustomButtonViewIcon" title:@"您点击了自定义按钮" subTitle:@"自定义按钮副标题" lastIconName:@"CustomButtonViewLastIcon"];
        _customButtonView1.customButtonViewClickOperation = ^{
            [weakSelf customButtonView1Click];
        };
    }
    return _customButtonView1;
}

- (ASCustomButtonView *)customButtonView2 {
    if (!_customButtonView2) {
        __weak typeof(self) weakSelf = self;
        _customButtonView2 = [[ASCustomButtonView alloc] initCustomButtonViewWithIconName:@"CustomButtonViewIcon" title:@"您点击了自定义按钮" subTitle:@"自定义按钮副标题" lastIconName:@"CustomButtonViewLastIcon"];
        _customButtonView2.customButtonViewClickOperation = ^{
            [weakSelf customButtonView2Click];
        };
    }
    return _customButtonView2;
}

- (ASCustomButtonView *)customButtonView3 {
    if (!_customButtonView3) {
        __weak typeof(self) weakSelf = self;
        _customButtonView3 = [[ASCustomButtonView alloc] initCustomButtonViewWithIconName:@"CustomButtonViewIcon" title:@"您点击了自定义按钮" subTitle:@"自定义按钮副标题" lastIconName:@"CustomButtonViewLastIcon"];
        _customButtonView3.customButtonViewClickOperation = ^{
            [weakSelf customButtonView3Click];
        };
    }
    return _customButtonView3;
}


@end
