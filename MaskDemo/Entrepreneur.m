//
//  Entrepreneur.m
//  MaskDemo
//
//  Created by lyy on 2019/2/15.
//  Copyright © 2019 lyy. All rights reserved.
//

#import "Entrepreneur.h"

#define TallMask (1 << 0)
#define RichMask (1 << 1)
#define HandsomeMask (1 << 2)

@interface Entrepreneur ()
{
    //共用体：共用体的所有成员占用同一段内存，修改一个成员会影响其余所有成员。共用体占用的内存等于最长的成员占用的内存。共用体使用了内存覆盖技术，同一时刻只能保存一个成员的值，如果对新的成员赋值，就会把原来成员的值覆盖掉。
    union {
        char bits;
        struct {
            char tall : 1;
            char rich : 1;
            char handsome : 1;
        };
    } _tallRichHandsome;
}
@end

@implementation Entrepreneur

- (void)setTall:(BOOL)tall {
    if (tall) {
        _tallRichHandsome.bits |= TallMask;
    }else {
        _tallRichHandsome.bits &= ~TallMask;
    }
}

- (void)setRich:(BOOL)rich {
    if (rich) {
        _tallRichHandsome.bits |= RichMask;
    }else {
        _tallRichHandsome.bits &= ~RichMask;
    }
}

- (void)setHandsome:(BOOL)handsome {
    if (handsome) {
        _tallRichHandsome.bits |= HandsomeMask;
    }else {
        _tallRichHandsome.bits &= ~HandsomeMask;
    }
}

- (BOOL)isTall {
    return !!(_tallRichHandsome.bits & TallMask);
}

- (BOOL)isRich {
    return !!(_tallRichHandsome.bits & RichMask);
}

- (BOOL)isHandsome {
    return !!(_tallRichHandsome.bits & HandsomeMask);
}

@end
