//
//  WKMapWebViewController.h
//  MapViewController
//
//  Created by Nattakarn Osborne on 7/21/15.
//  Copyright (c) 2015 Nan Osborne. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>


@interface WKMapWebViewController : UIViewController <UIWebViewDelegate,WKNavigationDelegate, WKUIDelegate>


@property (retain, nonatomic) NSURL *URL;
@property (retain, nonatomic) IBOutlet WKWebView *webView;
@property (weak, nonatomic) IBOutlet UINavigationBar *backNav;

@end
