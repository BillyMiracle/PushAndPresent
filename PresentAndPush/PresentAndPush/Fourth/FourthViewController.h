//
//  FourthViewController.h
//  PresentAndPush
//
//  Created by 张博添 on 2021/9/12.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol FourthBackToSecondDelegate <NSObject>

- (void)backToSecond;

@end

@interface FourthViewController : UIViewController

@property (nonatomic, assign) id<FourthBackToSecondDelegate> delegate;

@end

NS_ASSUME_NONNULL_END
