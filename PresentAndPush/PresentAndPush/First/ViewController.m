//
//  ViewController.m
//  PresentAndPush
//
//  Created by 张博添 on 2021/9/12.
//

#import "ViewController.h"
#import "SecondViewController.h"
#import "View.h"

@interface ViewController ()

@property (nonatomic, strong) View *firstView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _firstView = [[View alloc] initWithFrame:self.view.frame];
    [_firstView.pushButton addTarget:self action:@selector(present) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_firstView];
    
}

- (void)present {
    SecondViewController *secondViewController = [[SecondViewController alloc] init];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:secondViewController];
    nav.modalPresentationStyle = UIModalPresentationFullScreen;
    [self presentViewController:nav animated:YES completion:nil];
    NSLog(@"%p\n%p", self, self.presentedViewController);
}

@end
