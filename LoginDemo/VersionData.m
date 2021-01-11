//
//  VersionData.m
//  LoginDemo
//
//  Created by khf on 2021/1/11.
//

#import "VersionData.h"

@implementation VersionData

+ (instancetype)versionDataWithDic:(NSDictionary *)dic
{
    VersionData * version = [self new];
    [version setValuesForKeysWithDictionary:dic];
    return  version;
}
- (void)setValue:(id)value forUndefinedKey:(NSString *)key{
}
- (NSString *)description
{
    return [NSString stringWithFormat:@"%@{\n downloadLink:%@,\n features:%@,\n hasNewVersion:%@,\n id:%@,\n messageDigest:%@,\n needForce:%@,\n version:%@\n}", [super description],self.downloadLink,self.features,self.hasNewVersion?@"YES":@"NO",self.id,self.messageDigest,self.needForce?@"YES":@"NO",self.version];
}
@end
