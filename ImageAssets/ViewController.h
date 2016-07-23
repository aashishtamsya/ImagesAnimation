//
//  ViewController.h
//  ImageAssets
//
//  Created by Felix ITs 01 on 23/07/16.
//  Copyright © 2016 Aashish Tamsya. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    UIImageView *apple;
}
@property (weak, nonatomic) IBOutlet UIButton *startButton;
- (IBAction)startButtonTapped:(id)sender;

@end

