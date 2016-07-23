//
//  ViewController.m
//  ImageAssets
//
//  Created by Felix ITs 01 on 23/07/16.
//  Copyright © 2016 Aashish Tamsya. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    apple = [[UIImageView alloc]init];
    
    apple.image = [UIImage imageNamed:@"apple"];
    [apple setFrame:CGRectMake(40, 40, 100, 100)];
    [self.view addSubview:apple];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)startButtonTapped:(id)sender {
    
    
    UIButton *button = sender;
    
    CGFloat previousY = apple.frame.origin.y;
    CGFloat previousX = apple.frame.origin.x;
    
    CGFloat currentHeight = apple.frame.size.height;
    CGFloat currentWidth = apple.frame.size.width;

    
    if (button.tag == 0) {
        [UIView animateWithDuration:0.5 animations:^{
            CGFloat yValue = previousY - 50;
            
            [apple setFrame:CGRectMake(previousX, yValue, currentWidth, currentHeight)];
        }];
    }
    else if(button.tag == 1) {
        [UIView animateWithDuration:0.5 animations:^{
            CGFloat xValue = previousX + 50;
            
            [apple setFrame:CGRectMake(xValue, previousY, currentWidth, currentHeight)];
        }];

    }
    else if(button.tag == 2) {
        [UIView animateWithDuration:0.5 animations:^{
            CGFloat yValue = previousY + 50;
            
            [apple setFrame:CGRectMake(previousX, yValue, currentWidth, currentHeight)];
        }];
        
    }
    else if(button.tag == 3) {
        [UIView animateWithDuration:0.5 animations:^{
            CGFloat xValue = previousX - 50;
            
            [apple setFrame:CGRectMake(xValue, previousY, currentWidth, currentHeight)];
        }];
    }
    else if(button.tag == 4) {
        
        
        
        [UIView animateWithDuration:0.4 animations:^{
            [apple setFrame:CGRectMake(previousX, previousY, currentWidth*1.2, currentHeight*1.2)];
        }];
    }
    else if(button.tag == 5) {
        [UIView animateWithDuration:0.4 animations:^{
            [apple setFrame:CGRectMake(previousX, previousY, currentWidth*0.8, currentHeight*0.8)];
        }];
    }
    
    
    
    
    
    
}
@end
