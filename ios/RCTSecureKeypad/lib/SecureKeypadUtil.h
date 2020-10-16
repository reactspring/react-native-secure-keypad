//
//  SecureKeypadUtil.h
//
//
//  reactspring.io

#import <Foundation/Foundation.h>

@interface SecureKeypadUtil : NSObject

+ (NSString *) encrypt: (NSString *)clearText  key: (NSString *)key iv: (NSString *)iv;
+ (NSString *) decrypt: (NSString *)cipherText key: (NSString *)key iv: (NSString *)iv;
+ (NSString *) pbkdf2:(NSString *)password salt: (NSString *)salt cost: (NSInteger)cost length: (NSInteger)length;
+ (NSString *) randomKey: (NSInteger)length;
+ (NSString *) toHex: (NSData *)nsdata;
+ (NSData *) fromHex: (NSString *)string;

@end
