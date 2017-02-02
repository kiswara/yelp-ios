//
//  YLPHours.m
//  YelpAPI
//
//  Created by Kaleb Iswara on 1/31/17.
//
//

#import "YLPHours.h"

@implementation YLPHours

- (instancetype)initWithDictionary:(NSDictionary *)hourDict {
    if (self = [super init]) {
        _day = [hourDict[@"day"] integerValue];
        _overnight = hourDict[@"is_overnight"];
        _start = hourDict[@"start"];
        _end = hourDict[@"end"];
    }
    
    return self;
}

@end
