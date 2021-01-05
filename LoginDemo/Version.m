//
//  Version.m
//  LoginDemo
//
//  Created by khf on 2021/1/5.
//

#import "Version.h"

@implementation Version
+ (instancetype)versionWithDic:(NSDictionary *)dic
{
    Version * version = [self new];
    [version setValuesForKeysWithDictionary:dic];
    return  version;
}
- (void)setValue:(id)value forUndefinedKey:(NSString *)key{
}
- (NSString *)description
{
    return [NSString stringWithFormat:@"%@{message:%@}", [super description],self.message];
}
@end
