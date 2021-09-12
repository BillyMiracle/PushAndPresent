//
//  SecondViewController.m
//  PresentAndPush
//
//  Created by 张博添 on 2021/9/12.
//

#import "SecondViewController.h"
#import "SecondView.h"
#import "ThirdViewController.h"

@interface SecondViewController ()

@property (nonatomic, strong) SecondView *secondView;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"%p\n%p", self.navigationController, self.presentingViewController);
    _secondView = [[SecondView alloc] initWithFrame:self.view.frame];
    [self.view addSubview:_secondView];
    
    [_secondView.backButton addTarget:self action:@selector(pressBack) forControlEvents:UIControlEventTouchUpInside];
    [_secondView.pushButton addTarget:self action:@selector(pressPush) forControlEvents:UIControlEventTouchUpInside];
}

- (void)pressBack {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)pressPush {
    ThirdViewController *thirdViewController = [[ThirdViewController alloc] init];
    [self.navigationController pushViewController:thirdViewController animated:YES];
}

@end
