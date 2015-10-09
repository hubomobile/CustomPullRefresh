//
//  UIScrollView+CustomPullRefresh.h
//  CustomPullRefreshDemo
//
//  Created by hubo on 15/8/18.
//  Copyright (c) 2015年 hubo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIScrollView (CustomPullRefresh)

- (void)addCustomGifRefreshWithAction:(void (^)(void))aAction;

@end
