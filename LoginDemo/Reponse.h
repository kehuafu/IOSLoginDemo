//
//  Version.h
//  LoginDemo
//
//  Created by khf on 2021/1/5.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Reponse : NSObject

@property(nonatomic,assign)NSNumber * code;

@property(nonatomic,copy) NSString * message;

@property(nonatomic,copy)NSDictionary * data;

+(instancetype)versionWithDic:(NSDictionary*)dic;

@end

NS_ASSUME_NONNULL_END
