//
//  WhiteCollarWorker.m
//  MaskDemo
//
//  Created by lyy on 2019/2/15.
//  Copyright © 2019 lyy. All rights reserved.
//

#import "WhiteCollarWorker.h"

@interface WhiteCollarWorker ()
{
    // 位域：制定接头体成员z所占内存大小，这样就可以把几个不同的对象用一个字节的二进制位域来表示，节省空间
    struct {
        char tall : 1;
        char rich : 1;
        char handsome : 1;
    } _tallRichHandsome;
}
@end

@implementation WhiteCollarWorker

- (void)setTall:(BOOL)tall {
    _tallRichHandsome.tall = tall;
}

- (void)setRich:(BOOL)rich {
    _tallRichHandsome.rich = rich;
}

- (void)setHandsome:(BOOL)handsome {
    _tallRichHandsome.handsome = handsome;
}

- (BOOL)isTall {
    return !!(_tallRichHandsome.tall);
}

- (BOOL)isRich {
    return !!(_tallRichHandsome.rich);
}

- (BOOL)isHandsome {
    return !!(_tallRichHandsome.handsome);
}

@end
