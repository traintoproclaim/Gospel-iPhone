//
//  photosview.h
//  Gospel
//
//  Created by Vibha on 12/27/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "StartScreen14.h"
#import "MBProgressHUD.h"

@class MBProgressHUD;

@interface photosview : UIViewController<UIImagePickerControllerDelegate,UINavigationControllerDelegate>
{
    UIImageView * imageView;
    UIImageView * imageView1;
    UIButton *crop;
    NSTimer *timer;
    
    StartScreen14 *obj;
    MBProgressHUD *HUD;
    
}
@property (nonatomic, retain) StartScreen14 *obj;
@property (nonatomic, retain) UIImageView * imageView;
@property (nonatomic, retain) UIImageView * imageView1;
@property (nonatomic, retain) UIButton *crop;

-(void)cropimages;
-(void)loading;

@end
