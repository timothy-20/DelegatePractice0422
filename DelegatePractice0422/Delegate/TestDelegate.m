//
//  TestDelegate.m
//  DelegatePractice0422
//
//  Created by 임정운 on 2021/04/22.
//

#import "TestDelegate.h"

@implementation TestDelegate

-(void)run
{
    if ([self.sendDelegate respondsToSelector:@selector(sendAnyString:)]) {
        [self.sendDelegate sendAnyString:@"four time"];
    }
}

@end
