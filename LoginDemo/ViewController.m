//
//  ViewController.m
//  LoginDemo
//
//  Created by khf on 2021/1/4.
//

#import "ViewController.h"
#import "Version.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UITextField *numberText;
@property (strong, nonatomic) IBOutlet UITextField *passwordText;
- (IBAction)loginButon;

@property (strong, nonatomic) IBOutlet UIButton *login;

@property(strong,nonatomic) Version* version;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //监听账号
    [self.numberText addTarget:self action:@selector(textChange)forControlEvents:(UIControlEventEditingChanged)];
    
    //监听密码
    [self.passwordText addTarget:self action:@selector(textChange)forControlEvents:(UIControlEventEditingChanged)];
    
    [self loadData];
    
}
//监听文本变化
- (void)textChange{
    NSLog(@"%@",self.numberText.text);
    NSLog(@"%@",self.passwordText.text);
    if(self.numberText.text.length>0&&self.passwordText.text.length>0){
        self.login.enabled = YES;
    }else{
        self.login.enabled = NO;
    }
}
//登录按钮
- (IBAction)loginButon {
//    if (![self.numberText.text isEqualToString:@"123"]&&
//        [self.passwordText.text isEqualToString:@"qwe"]) {
//        return;
//    }
    if (![[self.version message] isEqualToString:@"SUCCESS"]) {
        NSLog(@"跳不了______%@",[self.version message]);
        return;
    }else{
        NSLog(@"跳_____%@",[self.version message]);
    }
}
//发送异步请求
- (void) loadData{
    NSURL *url = [NSURL URLWithString:@"http://175.24.55.218:33934/auth/base/version"];
    NSURLRequest * request=[NSURLRequest requestWithURL:url];
    [NSURLConnection sendAsynchronousRequest:request queue:[NSOperationQueue mainQueue] completionHandler:^(NSURLResponse * _Nullable response, NSData * _Nullable data, NSError * _Nullable connectionError) {
            if (connectionError) {
                NSLog(@"连接错误 %@",connectionError);
                return;
            }
        NSHTTPURLResponse *httpResponse = (NSHTTPURLResponse*)response;
        if (httpResponse.statusCode==200||httpResponse.statusCode==304){
            //解析数据 json形式的字符串转换oc对象
            NSDictionary * dic =[NSJSONSerialization JSONObjectWithData:data options:0 error:NULL];
            //NSLog(@"%@",dic);
            //字典转模型
            self.version= [Version versionWithDic:dic];
            NSLog(@"%@",self.version);
        }else{
            NSLog(@"服务器内部错误");
        }
    }];
}
@end
