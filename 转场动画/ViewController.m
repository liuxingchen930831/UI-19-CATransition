//
//  ViewController.m
//  转场动画
//
//  Created by liuxingchen on 16/10/26.
//  Copyright © 2016年 liuxingchen. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *ImageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}
static int i = 1;
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    //转场代码
    if (i ==4) {
        i = 1;
    }
    NSString *imageStr = [NSString stringWithFormat:@"%i",i];
    i++;
    self.ImageView.image = [UIImage imageNamed:imageStr];
    
    //转场动画
    CATransition *anim = [CATransition animation];
    anim.type = @"fade";
    anim.duration = 1;
    [self.ImageView.layer addAnimation:anim forKey:nil];
}
@end
