//
//  YLPBusinessHours.m
//  YelpAPI
//
//  Created by Kaleb Iswara on 1/31/17.
//
//

#import "YLPBusinessHours.h"
#import "YLPHours.h"
#import "YLPResponsePrivate.h"

@implementation YLPBusinessHours

- (instancetype)initWithDictionary:(NSDictionary *)businessHoursDict {
    if (self = [super init]) {
        _hours = [self.class hoursFromJSONArray:businessHoursDict[@"open"]];
        _openNow = [businessHoursDict[@"is_open_now"] boolValue];
        _type = businessHoursDict[@"hours_type"];
    }
    return self;
}

+ (NSArray *)hoursFromJSONArray:(NSArray *)hoursJSON {
    NSMutableArray<YLPHours *> *hours = [[NSMutableArray alloc] init];
    for (NSDictionary *hour in hoursJSON) {
        [hours addObject:[[YLPHours alloc] initWithDictionary:hour]];
    }
    return hours;
}

@end
