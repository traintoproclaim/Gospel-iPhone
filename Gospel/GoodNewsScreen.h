//
//  GoodNewsScreen.h
//  Gospel
//
//  Created by Vibha on 12/7/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "StartScreen12.h"

@interface GoodNewsScreen : UIViewController
{
    CGRect lb1;
    CGRect lb2;
    
    UIImageView *image;
    
    StartScreen12 *tab1;
    
    UIButton *back;
    UIButton *text;
    
    IBOutlet UIButton *lable1;


}
@property(nonatomic,retain) UIButton *text;
@property(nonatomic,retain) UIImageView *image;
@property(nonatomic,retain) UIButton *back;
@property(nonatomic,retain) IBOutlet UIButton *lable1;

-(IBAction)gobackview:(id)sender;
-(void)longTap;
-(void)labelTap;
-(void)showlable;

@end
