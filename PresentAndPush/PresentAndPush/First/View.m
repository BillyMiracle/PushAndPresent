//
//  View.m
//  PresentAndPush
//
//  Created by 张博添 on 2021/9/12.
//

#import "View.h"

@implementation View

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    self.backgroundColor = [UIColor lightGrayColor];
    _pushButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _pushButton.frame = CGRectMake(100, 200, 100, 50);
    [_pushButton setTintColor:[UIColor orangeColor]];
    [_pushButton setTitle:@"push" forState:UIControlStateNormal];
    [self addSubview:_pushButton];
    
    _titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 100, frame.size.width, 50)];
    _titleLabel.textAlignment = NSTextAlignmentCenter;
    _titleLabel.text = @"First Page";
    [self addSubview:_titleLabel];
    
    return self;
}

@end
