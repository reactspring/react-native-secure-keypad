//
//  RCTSecureKeypad.m
//
//  reactspring.io

#import "RCTSecureKeypad.h"
#import "SecureKeypadUtil.h"

@implementation RCTSecureKeypad

RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(secureInput:(NSInteger)type
                  resolver:(RCTPromiseResolveBlock)resolve
                  rejecter:(RCTPromiseRejectBlock)reject) {
    NSError *error = nil;
    NSString *encryptText = @"";
    
    // TODO
    
    resolve(encryptText);
}

RCT_EXPORT_METHOD(encrypt:(NSString *)data key:(NSString *)key iv:(NSString *)iv
                  resolver:(RCTPromiseResolveBlock)resolve
                  rejecter:(RCTPromiseRejectBlock)reject) {
    NSError *error = nil;
    NSString *base64 = [SecureKeypadUtil encrypt:data key:key iv:iv];
    if (base64 == nil) {
        reject(@"encrypt_fail", @"Encrypt error", error);
    } else {
        resolve(base64);
    }
}

RCT_EXPORT_METHOD(decrypt:(NSString *)base64 key:(NSString *)key iv:(NSString *)iv
                  resolver:(RCTPromiseResolveBlock)resolve
                  rejecter:(RCTPromiseRejectBlock)reject) {
    NSError *error = nil;
    NSString *data = [SecureKeypadUtil decrypt:base64 key:key iv:iv];
    if (data == nil) {
        reject(@"decrypt_fail", @"Decrypt failed", error);
    } else {
        resolve(data);
    }
}

RCT_EXPORT_METHOD(pbkdf2:(NSString *)password salt:(NSString *)salt
                  cost:(NSInteger)cost length:(NSInteger)length
                  resolver:(RCTPromiseResolveBlock)resolve
                  rejecter:(RCTPromiseRejectBlock)reject) {
    NSError *error = nil;
    NSString *data = [SecureKeypadUtil pbkdf2:password salt:salt cost:cost length:length];
    if (data == nil) {
        reject(@"keygen_fail", @"Key generation failed", error);
    } else {
        resolve(data);
    }
}

RCT_EXPORT_METHOD(randomKey:(NSInteger)length
                  resolver:(RCTPromiseResolveBlock)resolve
                  rejecter:(RCTPromiseRejectBlock)reject) {
    NSError *error = nil;
    NSString *data = [SecureKeypadUtil randomKey:length];
    if (data == nil) {
        reject(@"random_fail", @"Random key error", error);
    } else {
        resolve(data);
    }
}

@end
