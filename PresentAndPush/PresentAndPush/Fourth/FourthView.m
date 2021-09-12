//
//  FourthView.m
//  PresentAndPush
//
//  Created by 张博添 on 2021/9/12.
//

#import "FourthView.h"

@implementation FourthView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    self.backgroundColor = [UIColor whiteColor];
    
    _titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 100, frame.size.width, 50)];
    _titleLabel.textAlignment = NSTextAlignmentCenter;
    _titleLabel.text = @"Fourth Page";
    [self addSubview:_titleLabel];
    
    _backButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _backButton.frame = CGRectMake(100, 200, 150, 50);
    [_backButton setTintColor:[UIColor blueColor]];
    [_backButton setTitle:@"Back to Third" forState:UIControlStateNormal];
    [self addSubview:_backButton];
    
    _backToSecondButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _backToSecondButton.frame = CGRectMake(100, 300, 150, 50);
    [_backToSecondButton setTintColor:[UIColor blueColor]];
    [_backToSecondButton setTitle:@"Back to Second" forState:UIControlStateNormal];
    [self addSubview:_backToSecondButton];
    
    return self;
}

@end
