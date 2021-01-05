//
//  ViewController.m
//  LoginDemo
//
//  Created by khf on 2021/1/4.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UITextField *numberText;
@property (strong, nonatomic) IBOutlet UITextField *passwordText;
- (IBAction)login:(id)sender;
@property (strong, nonatomic) IBOutlet UIButton *loginButon;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.numberText addTarget:self action:@selector(textChange)forControlEvents:(UIControlEventEditingChanged)];
    
    [self.passwordText addTarget:self action:@selector(textChange)forControlEvents:(UIControlEventEditingChanged)];


}
- (void)textChange{
    NSLog(@"%@",self.numberText.text);
    NSLog(@"%@",self.passwordText.text);
    if(self.numberText.text.length>0&self.passwordText.text.length>0){
        self.loginButon.enabled = YES;
    }else{
        self.loginButon.enabled = NO;
    }
}
//- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
//    NSLog(@"%@",self.numberText.text);
//    return YES;
//}
- (IBAction)login:(id)sender {
    NSLog(@"123456");
}
@end
