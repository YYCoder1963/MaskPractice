//
//  YYPerson.m
//  MaskDemo
//
//  Created by lyy on 2019/2/15.
//  Copyright © 2019 lyy. All rights reserved.
//

#import "YYPerson.h"

// 位运算z操作符  位与(&)、位或(|)、位非(~)、位异或(^)、左移(<<)、右移(>>)六种
// Mask 掩码 一般用来按位与或运算的
#define TallMask (1 << 0)
#define RichMask (1 << 1)
#define HandsomeMask (1 << 2)

@interface YYPerson ()
{
    char _tallRichHandsome;
}
@end

@implementation YYPerson

- (void)setTall:(BOOL)tall {
    if (tall) {
        _tallRichHandsome |= TallMask;
    }else {
        _tallRichHandsome &= ~TallMask; //将掩码按位取反再做与运算即可实现目标位置为非
    }
}

- (void)setRich:(BOOL)rich {
    if (rich) {
        _tallRichHandsome |= RichMask;
    }else {
        _tallRichHandsome &= ~RichMask;
    }
}

- (void)setHandsome:(BOOL)handsome {
    if (handsome) {
        _tallRichHandsome |= HandsomeMask;
    }else {
        _tallRichHandsome &= ~HandsomeMask;
    }
}

- (BOOL)isTall {
    return !!(_tallRichHandsome & TallMask);
}

- (BOOL)isRich {
    return !!(_tallRichHandsome & RichMask);
}

- (BOOL)isHandsome {
    return !!(_tallRichHandsome & HandsomeMask);
}

@end
