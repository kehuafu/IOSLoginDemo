//
//  Version.m
//  LoginDemo
//
//  Created by khf on 2021/1/5.
//

#import "Reponse.h"

@implementation Reponse
+ (instancetype)versionWithDic:(NSDictionary *)dic
{
    Reponse * reponse = [self new];
    [reponse setValuesForKeysWithDictionary:dic];
    return  reponse;
}
- (void)setValue:(id)value forUndefinedKey:(NSString *)key{
}
- (NSString *)description
{
    return [NSString stringWithFormat:@"%@{message:%@,code:%@,data:%@}", [super description],self.message,self.code,self.data];
}
@end
