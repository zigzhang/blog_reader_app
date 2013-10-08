//
//  BlogPost.h
//  blog_reader
//
//  Created by David ZHANG on 10/7/13.
//  Copyright (c) 2013 David ZHANG. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BlogPost : NSObject {
    NSString *title;
    NSString *author;
}

@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *author;
@property (nonatomic, strong) NSString *thumbnail;
@property (nonatomic, strong) NSString *date;
@property (nonatomic, strong) NSURL *url;

// Designated Initializer
- (id) initWithTitle:(NSString *)_title;
+ (id) blogPostWithTitle:(NSString *)title;

- (NSURL *) thumbnailURL;
- (NSString *) formattedDate;

@end
