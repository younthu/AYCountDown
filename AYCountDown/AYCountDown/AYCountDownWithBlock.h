//
//  AYCountDownWithBlock.h
//  AYCountDown
//
//  Created by Andrew Yang on 2/4/15.
//  Copyright (c) 2015 Andrew Yang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AYCountDownWithBlock : NSObject
/**
 *
 *
 *  @param stepInSeconds After how many seconds will it trigger a tick
 *  @param startFrom    The start point
 *  @param onTick       timer event callback, if you want to stop the timer in advance, please return YES at the end of this block, otherwise, return NO
 *
 *  @return key for this count down, can be used for cancel the counting down
 */
+ (NSString*)countDownWithStep:(float)stepInSeconds startFrom:(int)start onTick:(BOOL (^)(int tick, BOOL isLastTick))onTick;
@end
