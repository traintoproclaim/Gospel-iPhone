//
//  StartScreen6.h
//  Gospel
//
//  Created by Vibha on 11/9/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "StartSceen7.h"

@interface StartScreen6 : UIViewController
{
    CGRect lb1;
    CGRect lb2;
    CGRect lb3;
    CGRect lb4;
    CGRect lb5;
    CGRect lb6;
    CGRect lb7;
     
    UIImageView *image; 
    UIImageView *image1;
    UIImageView *image2;
    UIImageView *image3;
    
    
    UILabel *lable1;
    UILabel *lable3;
    UIButton *text;

    StartSceen7 *tab1;
    
    IBOutlet UIButton *back;
    IBOutlet UIButton *lable2;

    }
@property(nonatomic,retain) UIButton *text;
@property(nonatomic,retain) UIImageView *image;
@property(nonatomic,retain) UIImageView *image1;
@property(nonatomic,retain) UIImageView *image2;
@property(nonatomic,retain) UIImageView *image3;
@property(nonatomic,retain) UILabel *lable1;
@property(nonatomic,retain) UILabel *lable3;
@property(nonatomic,retain) IBOutlet UIButton *back;
@property(nonatomic,retain) IBOutlet UIButton *lable2;

-(void)callgiltyanimation;
-(IBAction)gobackview:(id)sender;
-(void)longTap;
-(void)labelTap;
-(void)showlable;

@end
