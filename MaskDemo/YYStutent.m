//
//  YYStutent.m
//  MaskDemo
//
//  Created by lyy on 2019/2/18.
//  Copyright © 2019 lyy. All rights reserved.
//

#import "YYStutent.h"

@implementation YYStutent


- (NSString *)description {
    NSString *description = @"学生在德智体美劳方面表现都不出色";
    if (!!(self.allRoundDevleopment & YYStudentAllRoundDevleopmentNone)) {
        return description;
    }else {
        NSMutableString *string = [NSMutableString string];
        if (!!(self.allRoundDevleopment & YYStudentAllRoundDevleopmentMorality)) {
            [string appendString:@"德"];
        }
        if (!!(self.allRoundDevleopment & YYStudentAllRoundDevleopmentItelligence)) {
            [string appendString:@"智"];
        }
        if (!!(self.allRoundDevleopment & YYStudentAllRoundDevleopmentPhysical)) {
            [string appendString:@"体"];
        }
        if (!!(self.allRoundDevleopment & YYStudentAllRoundDevleopmentArt)) {
            [string appendString:@"美"];
        }
        if (!!(self.allRoundDevleopment & YYStudentAllRoundDevleopmentLabour)) {
            [string appendString:@"劳"];
        }
        if (string.length) {
            return [NSString stringWithFormat:@"学生在%@方面表现出色",string];
        }else{
            return description;
        }
    }
}


@end
