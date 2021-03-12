//
//  RedditObjectiveCModel.m
//  HavasRedditTask
//
//  Created by Habib Durodola on 2021-03-11.
//

#import <Foundation/Foundation.h>
#import "RedditObjectiveCModel.h"

@implementation RedditObjectiveCModel

- (instancetype)initWithTitle:(NSString *)title
                       upVotes:(NSString *)upsVotes
                           comments:(NSString *)commnets
                       imageUrl:(NSString *)imageUrl
{
    self = [super init];
    if (self) {
        _title = title;
        _upsVotes = upsVotes;
        _commnets = commnets;
        _imageUrl = imageUrl;
    }

    return self;
}


@end

