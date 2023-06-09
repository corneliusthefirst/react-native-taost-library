#import <React/RCTBridgeModule.h>

@interface RCT_EXTERN_MODULE(TaostLibrary, NSObject)

RCT_EXTERN_METHOD(multiply:(float)a withB:(float)b
                 withResolver:(RCTPromiseResolveBlock)resolve
                 withRejecter:(RCTPromiseRejectBlock)reject
                 showTaost:(NSString *)message)

+ (BOOL)requiresMainQueueSetup
{
  return NO;
}

@end
