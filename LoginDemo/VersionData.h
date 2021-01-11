//
//  VersionData.h
//  LoginDemo
//
//  Created by khf on 2021/1/11.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface VersionData : NSObject

@property(nonatomic,assign) NSNumber * id;

@property(nonatomic,copy)NSString * downloadLink;

@property(nonatomic,copy) NSString * features;

@property(nonatomic,assign)BOOL *hasNewVersion;

@property(nonatomic,copy) NSString * messageDigest;

@property(nonatomic,assign)BOOL *needForce;

@property(nonatomic,copy) NSString * version;

+(instancetype)versionDataWithDic:(NSDictionary*)dic;
@end

NS_ASSUME_NONNULL_END
