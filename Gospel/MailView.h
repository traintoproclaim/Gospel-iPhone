//
//  MailView.h
//  Gospel
//
//  Created by Vibha on 11/28/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MailView_1.h"
#import "welldoneView.h"
#import "MBProgressHUD.h"

@class MBProgressHUD;
#define ServerURL @"http://html.traintoproclaim.com/gospel/ReceiveUploads.php?"

@interface MailView : UIViewController<UITextFieldDelegate,UIAlertViewDelegate>
{
     UILabel *lable1;
     UIButton *send;
     welldoneView *tab1;
     MBProgressHUD *HUD;
     
     NSMutableData *responseData;
   
     NSTimer *timer;
     UIAlertView *alert11;
     NSInteger count;
    
    IBOutlet UITextField *email;
    IBOutlet UITextField *audiname;
    IBOutlet UIButton *back;
    IBOutlet UIButton *next1;


}

@property(nonatomic,retain) IBOutlet UITextField *audiname;
@property(nonatomic,retain) IBOutlet UIButton *next1;
@property(nonatomic,retain) IBOutlet UITextField *email;
@property(nonatomic,retain) IBOutlet UIButton *back;
@property(nonatomic,retain) UILabel *lable1;
@property(nonatomic,retain) UIButton *send;

-(IBAction)sendAction:(id)sender;
-(BOOL)validateEmail:(NSString *) candidate;
-(IBAction)gobackview:(id)sender;
-(IBAction)nextview:(id)sender;
-(void)animateTextField:(UITextField*)textField up:(BOOL)up;
-(void)inwitdownloadhstring;
-(void)loading;
-(void)longTap;

@end
