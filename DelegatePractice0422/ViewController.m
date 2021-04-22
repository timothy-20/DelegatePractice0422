//
//  ViewController.m
//  DelegatePractice0422
//
//  Created by 임정운 on 2021/04/22.
//

#import "ViewController.h"

#import "TestDelegate.h"

@interface ViewController ()<SendStringDelegate>
{
    NSString *globalString;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    TestDelegate *delegate = [[TestDelegate alloc] init];
    delegate.sendDelegate = self;
    
    [delegate run];
    //delegate 메소드가 실행된 함수는 분명히 실행된 것이어야 한다.(나는 delegate에서 선언한 입장이므로 mainViewcontroller에 구현했다.
    
    NSLog(@"This is global string: %@", globalString);
}

-(void)sendAnyString:(NSString *)str
{
    NSLog(@"%@", str);
    globalString = str;
}


@end
