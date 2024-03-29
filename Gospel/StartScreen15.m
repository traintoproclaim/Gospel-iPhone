//
//  StartScreen15.m
//  Gospel
//
//  Created by Vibha on 11/28/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "StartScreen15.h"
#import "StartScreen16.h"
#import "GospelViewController.h"
#import "HellAction.h"
#import "extra9.h"


@implementation StartScreen15
@synthesize image1,image,image2,image3,image4,image5,image6,image7,image8;
@synthesize lable1,lable2,back,text;
int value16=1;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
self.view.backgroundColor=[UIColor colorWithPatternImage:[UIImage imageNamed:@"background.png"]];    
        lb2=CGRectMake(50, 30, 389,89);
    image1=[[UIImageView alloc]initWithFrame:lb2];
    [image1 setImage:[UIImage imageNamed:@"timeline_whole.png"]];
    [self.view addSubview:image1];
    
    lb3=CGRectMake(205, 130, 80, 30);
    lable2=[[UILabel alloc]initWithFrame:lb3];
    lable2.text=@"WE MUST";
    lable2.font= [UIFont fontWithName:@"Opificio" size:19.f];
    lable2.textColor=[UIColor blackColor];
    lable2.lineBreakMode=UILineBreakModeWordWrap;
    lable2.numberOfLines=2;
    lable2.backgroundColor=[UIColor clearColor];;
    [self.view addSubview:lable2];

}
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
   // NSLog(@"touch began");
    [self performSelector:@selector(longTap) withObject:nil afterDelay:2.0];
}
-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    //NSLog(@"Touch count %d",value16);
       [NSObject cancelPreviousPerformRequestsWithTarget:self];
    switch (value16)
    {
        case 1:
            lable1.frame=CGRectMake(0, 270, 480, 50);
             [lable1 setTitle:@"We must make a commitment to ...  " forState:UIControlStateNormal];
           // lable1.text=@"We must make a commitment to ...  ";
            value16=2;
            break;
            
        case 2: /*lb4=CGRectMake(110, 160,120,97);
            image2=[[UIImageView alloc]initWithFrame:lb4];
            [image2 setImage:[UIImage imageNamed:@"turn_away_small.png"]];
            [self.view addSubview:image2]; */
                
         [self callturnimage];
            [lable1 setTitle:@"... TURN from everything we know to be wrong and ..." forState:UIControlStateNormal];
 
           // lable1.text=@"... TURN from everything we know to be wrong and ...";
            value16=3;
            break;
        case 3:
            lb5=CGRectMake(260, 159,123,112);
            image3=[[UIImageView alloc]initWithFrame:lb5];
            [image3 setImage:[UIImage imageNamed:@"surrender_small.png"]];
            [self.view addSubview:image3];
                        lable1.frame=CGRectMake(0, 270, 480, 50);
           [lable1 setTitle:@" SURRENDER our lives to Jesus Christ. " forState:UIControlStateNormal]; 
           // lable1.text=@" SURRENDER our lives to Jesus Christ. ";
            value16=4;
            break;
        case 4:image1.hidden=YES;
            image2.hidden=YES;
            image3.hidden=YES;
            image4.hidden=YES;
            image5.hidden=YES;
            image6.hidden=YES;
            lable2.hidden=YES;
            lable1.titleLabel.text=nil;
            NSUserDefaults *bc=[NSUserDefaults standardUserDefaults];
            [bc setObject:@"0" forKey:@"back"];
            tab1=[[extra9 alloc]initWithNibName:@"extra9" bundle:[NSBundle mainBundle]];            [self.navigationController pushViewController:tab1 animated:NO];
            [tab1 release];        
            break;
         }
}
-(void)longTap
{
    NSLog(@"Long Press");
    GospelViewController *Controller=[[GospelViewController alloc]init];
    self.navigationController.viewControllers=[NSArray arrayWithObjects:Controller, nil];
    
    [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:0] animated:YES];
    [self.navigationController popViewControllerAnimated:YES];
    
}

-(void)callturnimage
{
    image2=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"turn6.png"]];
    lb4=CGRectMake(110, 159,120,97);
    image2.frame=lb4;
    image2.animationImages =[NSArray arrayWithObjects:
                              [UIImage imageNamed:@"turn1.png"],
                              [UIImage imageNamed:@"turn2.png"],
                             [UIImage imageNamed:@"turn3.png"],
                             [UIImage imageNamed:@"turn4.png"],
                             [UIImage imageNamed:@"turn5.png"],
                             [UIImage imageNamed:@"turn6.png"],
                              nil];
    [image2 setAnimationRepeatCount:1];
    image2.animationDuration= 0.60;
    
    image2.contentMode =UIViewAutoresizingFlexibleWidth;
    [image2 startAnimating];
    [self.view addSubview:image2];
    [self.view bringSubviewToFront:image2];
}

-(void)callcrossimage
{
    image5=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"close8.png"]];
    lb9=CGRectMake(165, 30, 150,203);
    image5.frame=lb9;
    image5.animationImages =[NSArray arrayWithObjects:
                             [UIImage imageNamed:@"close1.png"],
                             [UIImage imageNamed:@"close2.png"],
                             [UIImage imageNamed:@"close3.png"],
                             [UIImage imageNamed:@"close4.png"],
                             [UIImage imageNamed:@"close5.png"],
                             [UIImage imageNamed:@"close6.png"],
                             [UIImage imageNamed:@"close7.png"],
                             [UIImage imageNamed:@"close8.png"],nil];
    [image5 setAnimationRepeatCount:1];
    image5.animationDuration= 1.0;
    
    image5.contentMode =UIViewAutoresizingFlexibleWidth;
    [image5 startAnimating];
    [self.view addSubview:image5];
    [self.view bringSubviewToFront:image5];
}
-(void)callbloodanimation
{
    image6=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"close11.png"]];
    lb9=CGRectMake(165, 30, 150, 203);
    image6.frame=lb9;
    image6.animationImages =[NSArray arrayWithObjects:
                             [UIImage imageNamed:@"close9.png"],
                             [UIImage imageNamed:@"close10.png"],
                             [UIImage imageNamed:@"close11.png"],
                            nil];
    [image6 setAnimationRepeatCount:1];
    image6.animationDuration= 1.0;
    
    image6.contentMode =UIViewAutoresizingFlexibleWidth;
    [image6 startAnimating];
    [self.view addSubview:image6];
    [self.view bringSubviewToFront:image6];
}

-(IBAction)gobackview:(id)sender
{
    HellAction *backview=[[HellAction alloc]initWithNibName:@"HellAction" bundle:nil];
    self.navigationController.viewControllers=[NSArray arrayWithObjects:backview, nil];
    
    [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:0] animated:YES];
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
    lable1.hidden=NO;
    lable2.hidden=NO;
    image1.hidden=NO;
    lb1=CGRectMake(0, 270, 480, 50);
    lable1.frame=lb1;
    lable1.titleLabel.font= [UIFont fontWithName:@"Opificio" size:17.f];
    lable1.titleLabel.numberOfLines=4;
    lable1.titleLabel.lineBreakMode=YES;
    [lable1 setTitle:@"  Now can you remember the two things we must do to                   have this event?" forState:UIControlStateNormal];
    lable1.backgroundColor=[UIColor blackColor];
    [lable1 addTarget:self action:@selector(labelTap) forControlEvents:UIControlEventTouchUpInside];
    lable1.titleLabel.textAlignment=UITextAlignmentCenter;
    [self.view addSubview:lable1];
    
    text=[[UIButton alloc]init];
    text.frame=CGRectMake(430,270 , 50, 50);
    text.backgroundColor=[UIColor clearColor];
    [text setImage:[UIImage imageNamed:@"texticon.png"] forState:UIControlStateNormal];
    [text addTarget:self action:@selector(showlable) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:text];
    text.hidden=YES;
    
    value16=1;
    
    NSUserDefaults *perf=[NSUserDefaults standardUserDefaults];
   
    NSString *str=[perf objectForKey:@"lableoff"]; 
    if([str isEqualToString:@"1"])
    {
        lable1.hidden=YES;
        text.hidden=NO;
        
    }else
    {
        lable1.hidden=NO;
        text.hidden=YES;
        
    }
    
    
}
-(void)labelTap
{
    lable1.hidden=YES;
    text.hidden=NO;
    NSUserDefaults *perf=[NSUserDefaults standardUserDefaults];
    [perf setObject:@"1" forKey:@"lableoff"];

}
-(void)showlable
{
    lable1.hidden=NO;
    text.hidden=YES;
    NSUserDefaults *perf=[NSUserDefaults standardUserDefaults];
    [perf setObject:@"0" forKey:@"lableoff"];

    
}
- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationLandscapeLeft||interfaceOrientation == UIInterfaceOrientationLandscapeRight);
}

@end
