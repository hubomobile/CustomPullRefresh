//
//  UIScrollView+CustomPullRefresh.m
//  CustomPullRefreshDemo
//
//  Created by hubo on 15/8/18.
//  Copyright (c) 2015年 hubo. All rights reserved.
//

#import "UIScrollView+CustomPullRefresh.h"
#import "CustomGifPullRefreshView.h"
#import <objc/runtime.h>


static char UIScrollViewGifPullRefreshView;

@implementation UIScrollView (CustomPullRefresh)

#pragma mark - Pubic

- (void)addCustomGifRefreshWithAction:(void (^)(void))aAction {
    if(!self.gifPullRefreshView) {
        CustomGifPullRefreshView *view = [[CustomGifPullRefreshView alloc] initWithFrame:CGRectMake(0, -CustomGifPullRefreshViewHeight, self.bounds.size.width, CustomGifPullRefreshViewHeight)];
        [self addSubview:view];
    }
}


#pragma mark - Private

- (void)setGifPullRefreshView:(CustomGifPullRefreshView *)aGifPullRefreshView {
    [self willChangeValueForKey:@"CustomGifPullRefreshView"];
    objc_setAssociatedObject(self, &UIScrollViewGifPullRefreshView,aGifPullRefreshView,OBJC_ASSOCIATION_ASSIGN);
    [self didChangeValueForKey:@"CustomGifPullRefreshView"];
}

- (CustomGifPullRefreshView *)gifPullRefreshView {
    return objc_getAssociatedObject(self, &UIScrollViewGifPullRefreshView);
}

@end
