//
//  WKMapWebViewController.m
//  MapViewController
//
//  Created by Nattakarn Osborne on 7/21/15.
//  Copyright (c) 2015 Nan Osborne. All rights reserved.
//

#import "WKMapWebViewController.h"



@implementation WKMapWebViewController

@synthesize webView;

- (void)viewDidLoad {
    [super viewDidLoad];
    //    [webView setDelegate:self];
    self.webView = [[WKWebView alloc]init];
    
    self.view = self.webView;
    
    
}

#pragma mark -
#pragma mark UIViewController delegate methods

- (void)viewWillAppear:(BOOL)animated
{
    self.webView.UIDelegate = self;
    // setup the delegate as the web view is shown
    //NSURL *url = [NSURL URLWithString:self.URL];
    
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:self.URL];
    [self.webView loadRequest:request];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [self.webView stopLoading]; // in case the web view is still loading its content
    self.webView.UIDelegate = nil; // disconnect the delegate as the webview is hidden
    [UIApplication sharedApplication].networkActivityIndicatorVisible = NO;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // we support rotation in this view controller
    return YES;
}

#pragma mark -
#pragma mark UIWebViewDelegate

- (void)webViewDidStartLoad:(UIWebView *)webView
{
    // starting the load, show the activity indicator in the status bar
    [UIApplication sharedApplication].networkActivityIndicatorVisible = YES;
}

- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    // finished loading, hide the activity indicator in the status bar
    [UIApplication sharedApplication].networkActivityIndicatorVisible = NO;
}

- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error
{
    [UIApplication sharedApplication].networkActivityIndicatorVisible = NO;
    
    NSString* errorString = [NSString stringWithFormat:
                             @"<html><center><font size=+5 color='red'>An error occurred:<br>%@</font></center></html>",
                             error.localizedDescription];
    [self.webView loadHTMLString:errorString baseURL:nil];
}


@end
