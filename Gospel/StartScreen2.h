//
//  StartScreen2.h
//  Gospel
//
//  Created by Vibha on 11/8/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "StartScreen3.h"
#import "extra1.h"

@interface StartScreen2 : UIViewController
{
    UILabel *lable1;
    UILabel *lable2;
    UILabel *lable4;
    UILabel *lable5; 
    UIButton *text;

    
    UIImageView *image;
    UIImageView *image1;
    UIImageView *image2;
    UIImageView *image3;
    UIImageView *image4;
    UIImageView *image5;
    UIImageView *image6;
    UIImageView *image7;
    UIImageView *image8;
    UIImageView *image9;
    UIImageView *image10;
    UIImageView *image11;
    UIImageView *image12;
    
    CGRect lb1;
    CGRect lb2;
    CGRect lb3;
    CGRect lb4;
    CGRect lb5;
    CGRect lb6;
    CGRect lb7;
    CGRect lb8;
    CGRect lb9;
    CGRect lb10;
    CGRect lb11;
    CGRect lb12;
    CGRect lb13;
    CGRect lb14;
    extra1 *tab1;
    
    IBOutlet UIButton *back;
    IBOutlet UIButton *lable3;
   
}
@property(nonatomic,retain) UIButton *text;
@property(nonatomic,retain) UILabel *lable1;
@property(nonatomic,retain) UILabel *lable2;
@property(nonatomic,retain) UILabel *lable4;
@property(nonatomic,retain) UILabel *lable5;
@property(nonatomic,retain) UIImageView *image;
@property(nonatomic,retain) UIImageView *image1;
@property(nonatomic,retain) UIImageView *image2;
@property(nonatomic,retain) UIImageView *image3;
@property(nonatomic,retain) UIImageView *image4;
@property(nonatomic,retain) UIImageView *image5;
@property(nonatomic,retain) UIImageView *image6;
@property(nonatomic,retain) UIImageView *image7;
@property(nonatomic,retain) UIImageView *image8;
@property(nonatomic,retain) UIImageView *image9;
@property(nonatomic,retain) UIImageView *image10;
@property(nonatomic,retain) UIImageView *image11;
@property(nonatomic,retain) UIImageView *image12;
@property(nonatomic,retain) IBOutlet UIButton *back;
@property(nonatomic,retain) IBOutlet UIButton *lable3;


-(void)calquestionimages;
-(IBAction)gobackview:(id)sender;
-(void)longTap;
-(void)labelTap;
-(void)showlable;
@end
