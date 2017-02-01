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
        _start = [self.class dateFromTimestamp:hourDict[@"start"]];
        _end = [self.class dateFromTimestamp:hourDict[@"end"]];
    }
    
    return self;
}

+ (NSDate *)dateFromTimestamp:(NSString *)timestamp {
    static NSDateFormatter *dateFormatter = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        dateFormatter = [[NSDateFormatter alloc] init];
        dateFormatter.dateFormat = @"HHmm";
        dateFormatter.timeZone = [NSTimeZone defaultTimeZone];
    });
    
    return [dateFormatter dateFromString:timestamp];
}

@end
