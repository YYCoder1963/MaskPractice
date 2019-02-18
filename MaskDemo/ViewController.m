//
//  ViewController.m
//  MaskDemo
//
//  Created by lyy on 2019/2/15.
//  Copyright © 2019 lyy. All rights reserved.
//

#import "ViewController.h"
#import "YYPerson.h"
#import "WhiteCollarWorker.h"
#import "YYStutent.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    WhiteCollarWorker *person = [WhiteCollarWorker new];
    [person setTall:NO];
    [person setRich:YES];
    [person setHandsome:NO];
    
    NSLog(@"isTall:%d,isRich:%d,isHandsome:%d",person.isTall,person.isRich,person.isHandsome);
    
    YYStutent *student = [YYStutent new];
    student.allRoundDevleopment = YYStudentAllRoundDevleopmentLabour |
                                  YYStudentAllRoundDevleopmentArt |
                                  YYStudentAllRoundDevleopmentPhysical |
                                  YYStudentAllRoundDevleopmentItelligence |
                                  YYStudentAllRoundDevleopmentMorality;
    NSLog(@"%@",student);
    
}


@end
