//
//  ThirdView.m
//  PresentAndPush
//
//  Created by 张博添 on 2021/9/12.
//

#import "ThirdView.h"

@implementation ThirdView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    self.backgroundColor = [UIColor blueColor];
    
    _titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 100, frame.size.width, 50)];
    _titleLabel.textAlignment = NSTextAlignmentCenter;
    _titleLabel.text = @"Third Page";
    [self addSubview:_titleLabel];
    
    _pushButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _pushButton.frame = CGRectMake(100, 200, 100, 50);
    [_pushButton setTintColor:[UIColor whiteColor]];
    [_pushButton setTitle:@"push Fourth" forState:UIControlStateNormal];
    [self addSubview:_pushButton];
    
    _backButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _backButton.frame = CGRectMake(100, 300, 150, 50);
    [_backButton setTintColor:[UIColor whiteColor]];
    [_backButton setTitle:@"Back to Second" forState:UIControlStateNormal];
    [self addSubview:_backButton];
    
    _backToFirstButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _backToFirstButton.frame = CGRectMake(100, 400, 150, 50);
    [_backToFirstButton setTintColor:[UIColor whiteColor]];
    [_backToFirstButton setTitle:@"Dismiss to First" forState:UIControlStateNormal];
    [self addSubview:_backToFirstButton];
    
    return self;
}

@end
