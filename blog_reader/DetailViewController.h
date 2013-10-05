//
//  DetailViewController.h
//  blog_reader
//
//  Created by David ZHANG on 10/4/13.
//  Copyright (c) 2013 David ZHANG. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
