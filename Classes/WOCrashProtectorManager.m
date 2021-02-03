//
//  WOCrashProtectorManager.m
//  GridGovernance
//
//  Created by 吴欧 on 2017/12/14.
//  Copyright © 2017年 Bitvalue. All rights reserved.
//

#import "WOCrashProtectorManager.h"
#import "NSObject+SelectorCrash.h"
#import "NSObject+KVOCrash.h"
#import "NSObject+NSNotificationCrash.h"

@implementation WOCrashProtectorManager

+ (void)makeAllEffective {
    [self _startAllComponents];
}

+ (void)configCrashProtectorService:(WOCrashProtectorStyle)protectorType {
   
    switch (protectorType) {
        case WOCrashProtectorNone:
            
            break;
        case WOCrashProtectorAll:
        {
            [self _startAllComponents];
        }
            break;
        case WOCrashProtectorUnrecognizedSelector:
            [NSObject wo_enableSelectorProtector];
            break;
        case WOCrashProtectorKVO:
            [NSObject wo_enableKVOProtector];
            break;
        case WOCrashProtectorNotification:
            [NSObject wo_enableNotificationProtector];
            break;
            
        default:
            break;
    }
}

//+ (void)configCrashProtectorServices:(NSArray *)protectorTypes {
//    
//    for (NSNumber *numb in protectorTypes) {
//        
//        [self configCrashProtectorService:[numb integerValue]];
//    }
//}

+ (void)_startAllComponents {
    [NSObject wo_enableSelectorProtector];
    [NSObject wo_enableKVOProtector];
    [NSObject wo_enableNotificationProtector]; // 可能会有性能问题，dealloc里面加了判断，系统的每个对象dealloc时都会调用
    
}

@end
