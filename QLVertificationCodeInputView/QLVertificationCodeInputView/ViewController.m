//
//  ViewController.m
//  QLVertificationCodeInputView
//
//  Created by ql on 2018/6/6.
//  Copyright © 2018年 ql. All rights reserved.
//  参考链接：https://github.com/casscqt/QTVertificationCodeInputView
//

#import "ViewController.h"
#import "QLVertificationCodeInputView.h"

@interface ViewController ()

@property (nonatomic, strong) QLVertificationCodeInputView *vertificationCodeInputView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.vertificationCodeInputView];
    self.view.backgroundColor = RGBAColor(77, 176, 24, 1);
    self.vertificationCodeInputView.block = ^(UITextField *textField){
        
    };
}

- (QLVertificationCodeInputView *)vertificationCodeInputView{
    if (!_vertificationCodeInputView) {
        _vertificationCodeInputView = [[QLVertificationCodeInputView alloc]initWithFrame:CGRectMake(30, 100, 300, 100)];
        _vertificationCodeInputView.spacing = 10;
        _vertificationCodeInputView.numberOfVertificationCode = 4;
        _vertificationCodeInputView.backgroundColor = [UIColor clearColor];
        {//框
////            默认为框 需要设置边框颜色 （圆角可选，填充颜色）
//            _vertificationCodeInputView.inputType = InpuViewTypeDefault;
//            _vertificationCodeInputView.lineWidth = 3;
//            _vertificationCodeInputView.cornerRadius = 5;
////            没有内容时背景色
//            _vertificationCodeInputView.fillColor = RGBAColor(255, 255, 255, 0.5);
////            有内容时背景色
//            _vertificationCodeInputView.h_fillColor = RGBAColor(255, 255, 255, 1);
//            _vertificationCodeInputView.borderColor = [UIColor redColor];
        }

        {
            _vertificationCodeInputView.inputType = InpuViewTypeLine;
//            没有内容时下划线颜色
            _vertificationCodeInputView.fillColor = RGBAColor(255, 255, 255, 0.5);
//            有内容时下划线颜色
            _vertificationCodeInputView.h_fillColor = RGBAColor(255, 255, 255, 1);
        }
    }
    return _vertificationCodeInputView;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
