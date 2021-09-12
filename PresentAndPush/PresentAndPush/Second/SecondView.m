//
//  SecondView.m
//  PresentAndPush
//
//  Created by 张博添 on 2021/9/12.
//

#import "SecondView.h"

@implementation SecondView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    self.backgroundColor = [UIColor orangeColor];
    
    _titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 100, frame.size.width, 50)];
    _titleLabel.textAlignment = NSTextAlignmentCenter;
    _titleLabel.text = @"Second Page";
    [self addSubview:_titleLabel];
    
    _pushButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _pushButton.frame = CGRectMake(100, 200, 100, 50);
    [_pushButton setTintColor:[UIColor blueColor]];
    [_pushButton setTitle:@"push Third" forState:UIControlStateNormal];
    [self addSubview:_pushButton];
    
    _backButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _backButton.frame = CGRectMake(100, 300, 100, 50);
    [_backButton setTintColor:[UIColor blueColor]];
    [_backButton setTitle:@"Back to First" forState:UIControlStateNormal];
    [self addSubview:_backButton];
    
    return self;
}

@end
