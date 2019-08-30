Pod::Spec.new do |s|
  s.name         = "QLVertificationCodeInputView"
  s.version      = "0.0.2"
  s.summary      = "验证码输入框"
  s.description  = <<-DESC
      验证码输入框，支持框和下划线两种方式
                   DESC
  s.homepage     = "https://github.com/mark1225/QLVertificationCodeInputView"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "qilong" => "915464855@qq.com" }
  s.platform 	 = :ios,"9.0"
  s.source       = { :git => "https://github.com/mark1225/QLVertificationCodeInputView.git", :tag => "#{s.version}" }
  s.source_files  = "QLVertificationCodeInputView/QLVertificationCodeInputView/QLVertificationCodeInputView/*.{h,m}"
end
