//
//  donationView.h
//  Gospel
//
//  Created by Vibha on 1/3/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface donationView : UIViewController
{
    IBOutlet UIButton *back;
    IBOutlet UILabel *data;
    IBOutlet UILabel *data1;
    IBOutlet UILabel *data2;
    IBOutlet UILabel *data3;
    IBOutlet UIButton *data5;
    IBOutlet UIButton *end;
    IBOutlet UILabel *lable1;

}
@property(nonatomic,retain) IBOutlet UILabel *lable1;
@property(nonatomic,retain) IBOutlet UIButton *end;
@property(nonatomic,retain) IBOutlet UIButton *back;
@property(nonatomic,retain) IBOutlet UILabel *data;
@property(nonatomic,retain) IBOutlet UILabel *data1;
@property(nonatomic,retain) IBOutlet UILabel *data2;
@property(nonatomic,retain) IBOutlet UILabel *data3;
@property(nonatomic,retain) IBOutlet UIButton *data5;

-(IBAction)gobackview:(id)sender;
-(IBAction)link:(id)sender;
-(IBAction)endaction:(id)sender;
@end
