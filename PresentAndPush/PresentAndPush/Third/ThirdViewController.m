//
//  ThirdViewController.m
//  PresentAndPush
//
//  Created by 张博添 on 2021/9/12.
//

#import "ThirdViewController.h"
#import "ThirdView.h"
#import "FourthViewController.h"

@interface ThirdViewController ()<FourthBackToSecondDelegate>

@property (nonatomic, strong) ThirdView *thirdView;

@end

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _thirdView = [[ThirdView alloc] initWithFrame:self.view.frame];
    [self.view addSubview:_thirdView];
    
    [_thirdView.pushButton addTarget:self action:@selector(pressPush) forControlEvents:UIControlEventTouchUpInside];
    [_thirdView.backButton addTarget:self action:@selector(pressBack) forControlEvents:UIControlEventTouchUpInside];
    [_thirdView.backToFirstButton addTarget:self action:@selector(pressToFirst) forControlEvents:UIControlEventTouchUpInside];
}

- (void)pressPush {
    FourthViewController *fourthViewController = [[FourthViewController alloc] init];
    fourthViewController.delegate = self;
    [self.navigationController pushViewController:fourthViewController animated:YES];
}

- (void)pressBack {
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)pressToFirst {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)backToSecond {
    [self.navigationController popViewControllerAnimated:YES];
}

@end
