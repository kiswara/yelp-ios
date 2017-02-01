//
//  YLPBusinessHours.h
//  YelpAPI
//
//  Created by Kaleb Iswara on 1/31/17.
//
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class YLPHours;

@interface YLPBusinessHours : NSObject

@property (nonatomic, readonly) NSArray<YLPHours *> *hours;
@property (nonatomic, getter=isOpenNow, readonly) BOOL openNow;
@property (nonatomic, readonly, copy) NSString *type;

@end

NS_ASSUME_NONNULL_END
