//
//  DetailViewController.m
//  blog_reader
//
//  Created by David ZHANG on 10/4/13.
//  Copyright (c) 2013 David ZHANG. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()
- (void)configureView;
@end

@implementation DetailViewController

#pragma mark - Managing the detail item

- (void)setBlogPostURL:(id)blogPostURL:(id)newBlogPostURL
{
    if (_blogPostURL != newBlogPostURL) {
        _blogPostURL = newBlogPostURL;
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    if (self.blogPostURL) {
        NSURLRequest *urlRequest = [NSURLRequest requestWithURL:self.blogPostURL];
        [self.webView loadRequest:urlRequest];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
