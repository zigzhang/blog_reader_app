//
//  BlogPost.m
//  blog_reader
//
//  Created by David ZHANG on 10/7/13.
//  Copyright (c) 2013 David ZHANG. All rights reserved.
//

#import "BlogPost.h"

@implementation BlogPost

- (id) initWithTitle:(NSString *)title {
    self = [super init];
    
    if (self) {
        self.title = title;
        self.author = nil;
        self.thumbnail = nil;
        self.date = nil;
        self.url = nil;
    }
    
    return self;
}

+ (id) blogPostWithTitle:(NSString *)title{
    return [[self alloc] initWithTitle:title];
}

- (NSURL *) thumbnailURL{
    NSLog(@"Thumbnail: %@", [self.thumbnail class]);
    if([self.thumbnail isKindOfClass:[NSString class]]){
        return [NSURL URLWithString:self.thumbnail];
    }
    else {
        return nil;
    }
}

- (NSString *) formattedDate{
    NSLog(@"Date: %@", [self.date class]);
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    NSDate *tempDate = [dateFormatter dateFromString:self.date];
    
    [dateFormatter setDateFormat:@"EE MMM,dd"];
    return [dateFormatter stringFromDate:tempDate];
    
}

@end
