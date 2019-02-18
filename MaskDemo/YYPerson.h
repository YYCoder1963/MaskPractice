//
//  YYPerson.h
//  MaskDemo
//
//  Created by lyy on 2019/2/15.
//  Copyright © 2019 lyy. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface YYPerson : NSObject

- (void)setTall:(BOOL)tall;
- (void)setRich:(BOOL)rich;
- (void)setHandsome:(BOOL)handsome;

- (BOOL)isTall;
- (BOOL)isRich;
- (BOOL)isHandsome;

@end

