//
//  FourthViewController.m
//  PresentAndPush
//
//  Created by 张博添 on 2021/9/12.
//

#import "FourthViewController.h"
#import "FourthView.h"

@interface FourthViewController ()

@property (nonatomic, strong) FourthView *fourthView;

@end

@implementation FourthViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _fourthView = [[FourthView alloc] initWithFrame:self.view.frame];
    [self.view addSubview:_fourthView];
    
    [_fourthView.backButton addTarget:self action:@selector(pressBack) forControlEvents:UIControlEventTouchUpInside];
    [_fourthView.backToSecondButton addTarget:self action:@selector(pressToSecond) forControlEvents:UIControlEventTouchUpInside];
    NSLog(@"%@", self.navigationController.viewControllers);
}

- (void)pressBack {
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)pressToSecond {
//    [self.navigationController popViewControllerAnimated:NO];
//    [self.delegate backToSecond];
    [self.navigationController popToRootViewControllerAnimated:YES];
}
@end
