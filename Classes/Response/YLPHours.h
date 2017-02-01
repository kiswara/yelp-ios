//
//  YLPHours.h
//  YelpAPI
//
//  Created by Kaleb Iswara on 1/31/17.
//
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface YLPHours : NSObject

@property(nonatomic, readonly) NSUInteger day;
@property (nonatomic, getter=isOvernight, readonly) BOOL overnight;
@property (nonatomic, copy, readonly) NSDate *start;
@property (nonatomic, copy, readonly) NSDate *end;

@end

NS_ASSUME_NONNULL_END
