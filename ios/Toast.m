//
//  Toast.m
//  BridgeNative
//
//  Created by Wahyu Setiawan on 24/10/21.
//

#import <Foundation/Foundation.h>
#import <React/RCTBridgeModule.h>

@interface RCT_EXTERN_MODULE(Toast, NSObject)
RCT_EXTERN_METHOD(showToast:(NSString *)message duration:(double *)duration)
@end


