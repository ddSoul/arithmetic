//
//  ArithmeticDetailVC.m
//  ArithmeticDemo
//
//  Created by ddSoul on 2018/11/23.
//  Copyright © 2018 dxl. All rights reserved.
//

#import "ArithmeticDetailVC.h"
#import <WebKit/WebKit.h>

#import "Masonry.h"

@interface ArithmeticDetailVC ()

@property (nonatomic, strong) WKWebView *webView;

@end

@implementation ArithmeticDetailVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self initUI];
}

- (void)initUI {
    
    [self.view addSubview:self.webView];
    [self.webView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.left.right.bottom.mas_equalTo(0);
    }];
    
    NSLog(@"______%@",self.htmlString);
    
    [self.webView loadHTMLString:self.htmlString baseURL:nil];
}

- (WKWebView *)webView {
    if (!_webView) {
        _webView = [[WKWebView alloc] init];
    }
    return _webView;
}


@end
