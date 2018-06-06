//
//  QLVertificationCodeLabel.h
//  QLVertificationCodeInputView
//
//  Created by ql on 2018/6/6.
//  Copyright © 2018年 ql. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum : NSUInteger {
    /** 框 */
    InpuViewTypeDefault,
    /** 线 */
    InpuViewTypeLine,
    
} InpuViewType;

@interface QLVertificationCodeLabel : UILabel

/// 验证码位数
@property (nonatomic, assign) NSInteger numberOfVertificationCode;
/// 间距
@property (nonatomic, assign) CGFloat   spacing;
/// 边框线宽度
@property (nonatomic, assign) CGFloat   lineWidth;
/// 边框颜色
@property (nonatomic, strong) UIColor   *borderColor;
/// 边框圆角
@property (nonatomic, assign) CGFloat   cornerRadius;

/// 空值时绘制区域填充颜色
@property (nonatomic, strong) UIColor   *fillColor;

/// 有值时绘制区域填充颜色
@property (nonatomic, strong) UIColor   *h_fillColor;
/// 输入框类型
@property (nonatomic, assign) InpuViewType inputType;


@end
