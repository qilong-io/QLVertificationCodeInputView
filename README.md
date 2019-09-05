# QLVertificationCodeInputView
验证码输入框
### 安装
pod 'QLVertificationCodeInputView', '~> 0.0.2'

### 使用说明


```
@property (nonatomic, strong) QLVertificationCodeInputView *vertificationCodeInputView;

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
```