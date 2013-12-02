//
//  copyRightView.h
//  Gospel
//
//  Created by Vibha on 1/1/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MFMailComposeViewController.h>
@interface copyRightView : UIViewController<MFMailComposeViewControllerDelegate>
{
    IBOutlet UIButton *back;
    IBOutlet UILabel *lable1;
    IBOutlet UILabel *lable2;
    IBOutlet UILabel *lable3;
    IBOutlet UILabel *lable5;
    IBOutlet UIButton *lable4;
}
@property(nonatomic,retain) IBOutlet UIButton *back;
@property(nonatomic,retain) IBOutlet UILabel *lable1;
@property(nonatomic,retain) IBOutlet UILabel *lable2;
@property(nonatomic,retain) IBOutlet UILabel *lable3;
@property(nonatomic,retain) IBOutlet UILabel *lable5;
@property(nonatomic,retain) IBOutlet UIButton *lable4;

-(IBAction)gobackview:(id)sender;
-(IBAction)Mailsend:(id)sender;

@end
