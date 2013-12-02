//
//  Quizintro.h
//  Gospel
//
//  Created by Vibha on 11/2/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Quizintro : UIViewController
{
    IBOutlet UIButton *next;
    IBOutlet UILabel *lable;
    IBOutlet UIButton *back;
}
@property(nonatomic,retain) IBOutlet UIButton *next;
@property(nonatomic,retain) IBOutlet UILabel *lable;
@property(nonatomic,retain) IBOutlet UIButton *back;

-(IBAction)gobackview:(id)sender;
-(IBAction)nextview:(id)sender;

@end
