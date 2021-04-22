//
//  TestDelegate.h
//  DelegatePractice0422
//
//  Created by 임정운 on 2021/04/22.
//

#import <Foundation/Foundation.h>

@protocol SendStringDelegate <NSObject>

-(void)sendAnyString:(NSString *)str;

@end

@interface TestDelegate : NSObject<SendStringDelegate>

@property (nonatomic, strong) id<SendStringDelegate> sendDelegate;
-(void)run;

@end
