//
//  YYStutent.h
//  MaskDemo
//
//  Created by lyy on 2019/2/18.
//  Copyright © 2019 lyy. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSUInteger, YYStudentAllRoundDevleopment) {
    YYStudentAllRoundDevleopmentNone        =0,
    YYStudentAllRoundDevleopmentMorality    = 1 << 0,
    YYStudentAllRoundDevleopmentItelligence = 1 << 1,
    YYStudentAllRoundDevleopmentPhysical    = 1 << 2,
    YYStudentAllRoundDevleopmentArt         = 1 << 3,
    YYStudentAllRoundDevleopmentLabour      = 1 << 4
};

@interface YYStutent : NSObject

@property(assign,nonatomic)YYStudentAllRoundDevleopment allRoundDevleopment;


@end

NS_ASSUME_NONNULL_END
