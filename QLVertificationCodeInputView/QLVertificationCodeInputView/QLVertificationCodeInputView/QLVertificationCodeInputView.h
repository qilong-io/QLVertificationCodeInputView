//
//  QLVertificationCodeInputView.h
//  QLVertificationCodeInputView
//
//  Created by ql on 2018/6/6.
//  Copyright © 2018年 ql. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "QLVertificationCodeLabel.h"

typedef void(^textDidChangeBlock)(UITextField *textField);

#define RGBAColor(r, g, b, a)   [UIColor colorWithRed:(r)/255.0f green:(g)/255.0f blue:(b)/255.0f alpha:(a)]

@interface QLVertificationCodeInputView : UIView

/// 验证码位数
@property(nonatomic, assign)  IBInspectable NSInteger numberOfVertificationCode;
/// 验证码/密码内容，可以通过该属性拿到验证码内容
@property (nonatomic, copy )  IBInspectable NSString *vertificationCode;
/// 间距
@property (nonatomic, assign) IBInspectable CGFloat   spacing;
/// 边框线宽度
@property (nonatomic, assign) IBInspectable CGFloat   lineWidth;
/// 边框颜色
@property (nonatomic, strong) IBInspectable UIColor   *borderColor;
/// 边框圆角
@property (nonatomic, assign) IBInspectable CGFloat   cornerRadius;
/// font
@property (nonatomic, strong) IBInspectable UIFont    *font;
/// textColor
@property (nonatomic, strong) IBInspectable UIColor   *textColor;
/// 文本变化回调
@property (nonatomic, copy  ) textDidChangeBlock block;

/// 没有值时绘制区域填充颜色
@property (nonatomic, strong) IBInspectable UIColor   *fillColor;

/// 有值时绘制区域填充颜色
@property (nonatomic, strong) IBInspectable UIColor   *h_fillColor;

/// 输入框类型
@property (nonatomic, assign) InpuViewType inputType;

@property (nonatomic, assign) BOOL becomeFirstResponse;


@end
