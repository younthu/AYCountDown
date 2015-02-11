//
//  AYCountDownWithBlock.m
//  AYCountDown
//
//  Created by Andrew Yang on 2/4/15.
//  Copyright (c) 2015 Andrew Yang. All rights reserved.
//

#import "AYCountDownWithBlock.h"
static NSNumber * serviceCount;
@implementation AYCountDownWithBlock

+ (void)initialize{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        serviceCount = @0;
    });
}

+ (void)__countDownWithStep:(float)stepInSeconds currentTick:(int)tickIndex onTick:(BOOL (^)(int tick,BOOL isLastTick))onTick{
    
    if (tickIndex <= 0) {
        if (onTick) {
            onTick(tickIndex,YES);
        }
    }else{
        BOOL shouldContinue = NO;
        if (onTick) {
            shouldContinue = onTick(tickIndex, NO);
        }
        
        if (shouldContinue) {
            dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(stepInSeconds * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
               [self __countDownWithStep:stepInSeconds currentTick:tickIndex - 1 onTick:onTick];
            });
        }

    }
    
}
+ (NSString*)countDownWithStep:(float)stepInSeconds startFrom:(int)start onTick:(BOOL (^)(int tick,BOOL isLastTick))onTick{
    
    
    NSAssert(start > 0, @"We count start a timer which should trigger in the past, please make sure the start is greater than 0");
    NSAssert(stepInSeconds > 0, @"We can't count up, please make sure the stepInSeconds is greater than 0.");

    NSString *serviceId = nil;
    @synchronized(serviceCount){
        serviceId = [serviceCount stringValue];
        serviceCount = @(serviceCount.integerValue + 1);
    }
    
    [self __countDownWithStep:stepInSeconds currentTick:start onTick:onTick];
    
    return serviceId;
}
@end
