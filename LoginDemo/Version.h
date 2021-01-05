//
//  Version.h
//  LoginDemo
//
//  Created by khf on 2021/1/5.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Version : NSObject

@property(nonatomic,copy) NSString * message;

+(instancetype)versionWithDic:(NSDictionary*)dic;

@end

NS_ASSUME_NONNULL_END
