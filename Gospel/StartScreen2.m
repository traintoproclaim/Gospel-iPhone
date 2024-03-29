//
//  StartScreen2.m
//  Gospel
//
//  Created by Vibha on 11/8/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "StartScreen2.h"
#import "StartScreen3.h"
#import "StartScreen1.h"
#import "GospelViewController.h"
#import "extra1.h"
#import "newview.h"

@implementation StartScreen2

@synthesize lable1,image,lable2,image1,lable3,image2,image3,image4,image5,image6,image9,image7,image8,image10,image11;
@synthesize lable5,lable4,back,image12,text;
int value2=1;

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

    lb1=CGRectMake(180, 120, 130, 100);
    lable1=[[UILabel alloc]initWithFrame:lb1];
    lable1.textColor=[UIColor whiteColor];
    lable1.font= [UIFont fontWithName:@"Opificio" size:26.f];
    lable1.text=@"QUESTION";
    lable1.backgroundColor=[UIColor clearColor];
    [self.view addSubview:lable1];
    
    text=[[UIButton alloc]init];
    text.frame=CGRectMake(430,270 , 50, 50);
    text.backgroundColor=[UIColor clearColor];
    [text setImage:[UIImage imageNamed:@"texticon.png"] forState:UIControlStateNormal];
    [text addTarget:self action:@selector(showlable) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:text];
    text.hidden=YES;
    
    lb9=CGRectMake(0, 270, 480, 50);
    lable3.frame=lb9;
    lable3.titleLabel.font= [UIFont fontWithName:@"Opificio" size:17.f];
    lable3.titleLabel.numberOfLines=4;
    lable3.titleLabel.lineBreakMode=YES;
    lable3.backgroundColor=[UIColor blackColor];
    [lable3 addTarget:self action:@selector(labelTap) forControlEvents:UIControlEventTouchUpInside];

     lable3.titleLabel.textAlignment=UITextAlignmentCenter;
     [self.view addSubview:lable3];
     NSUserDefaults *perf=[NSUserDefaults standardUserDefaults];
     NSString *str=[perf objectForKey:@"lableoff"]; 
    if([str isEqualToString:@"1"])
    {
        lable3.hidden=YES;
        text.hidden=NO;
    }else
    {
        lable3.hidden=NO;
        text.hidden=YES;
    }

 
}
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
     [self performSelector:@selector(longTap) withObject:nil afterDelay:2.0];
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
      [NSObject cancelPreviousPerformRequestsWithTarget:self];
    switch (value2)
    {
        case 1:[self calquestionimages];
            lb3=CGRectMake(75, 180, 350, 90);
            lable2=[[UILabel alloc]initWithFrame:lb3];
            lable2.text=@"NOW DO YOU KNOW ANY HUMAN WHO IS ENTIRELY PERFECT?";
            lable2.font= [UIFont fontWithName:@"Opificio" size:19.f];
            lable2.textAlignment=UITextAlignmentCenter;
            lable2.textColor=[UIColor grayColor];
            lable2.lineBreakMode=UILineBreakModeWordWrap;
            lable2.numberOfLines=2;
            lable2.backgroundColor=[UIColor clearColor];
            [self.view addSubview:lable2];
                
            [lable3 setTitle:@"Now do you know any human who is entirely perfect?" forState:UIControlStateNormal];

            value2=2;
            break;
        case 2:
            [lable3 setTitle:@"{NO}. Neither do I." forState:UIControlStateNormal];

            value2=3;

            break;
        case 3:lable2.hidden=YES;
            lable4.hidden=YES;
            lable5.hidden=YES;
            lable3.titleLabel.text=nil;
            image.hidden=YES;
            image1.hidden=YES;
            image2.hidden=YES;
            image3.hidden=YES;
            image4.hidden=YES;
            image5.hidden=YES;
            image6.hidden=YES;
            image7.hidden=YES;
            image8.hidden=YES;
            image9.hidden=YES;
            image10.hidden=YES;
            image11.hidden=YES;
            image12.hidden=YES;
            
            
            tab1=[[extra1 alloc]initWithNibName:@"extra1" bundle:[NSBundle mainBundle]];            [self.navigationController pushViewController:tab1 animated:NO];
            [tab1 release];
            break;

        

    }        
}
-(void)labelTap
{
    lable3.hidden=YES;
    text.hidden=NO;
     NSUserDefaults *perf=[NSUserDefaults standardUserDefaults];
    [perf setObject:@"1" forKey:@"lableoff"];

}
-(void)showlable
{
    lable3.hidden=NO;
    text.hidden=YES;
    NSUserDefaults *perf=[NSUserDefaults standardUserDefaults];
    [perf setObject:@"0" forKey:@"lableoff"];

    
}
-(void)longTap
{
    NSLog(@"Long Press");
    GospelViewController *Controller=[[GospelViewController alloc]init];
    self.navigationController.viewControllers=[NSArray arrayWithObjects:Controller, nil];
    [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:0] animated:YES];
    [self.navigationController popViewControllerAnimated:YES];
    
}
-(void)calquestionimages
{
    image=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"qus11.png"]];
    lb2=CGRectMake(180, 30, 116, 116);
    image.frame=lb2;
    image.animationImages =[NSArray arrayWithObjects:
                             [UIImage imageNamed:@"qus1.png"],
                             [UIImage imageNamed:@"qus2.png"],
                             [UIImage imageNamed:@"qus3.png"],
                             [UIImage imageNamed:@"qus4.png"],
                             [UIImage imageNamed:@"qus5.png"],
                             [UIImage imageNamed:@"qus6.png"],
                             [UIImage imageNamed:@"qus7.png"],
                             [UIImage imageNamed:@"qus8.png"],
                             [UIImage imageNamed:@"qus9.png"],
                             [UIImage imageNamed:@"qus10.png"],
                             [UIImage imageNamed:@"qus11.png"],
                             nil];
    [image setAnimationRepeatCount:1];
    image.animationDuration= 1.0;
    
    image.contentMode =UIViewAutoresizingFlexibleWidth;
    [image startAnimating];
    [self.view addSubview:image];
    [self.view bringSubviewToFront:image];
}
-(IBAction)gobackview:(id)sender
{
       newview *backview=[[newview alloc]initWithNibName:@"newview" bundle:nil];
    self.navigationController.viewControllers=[NSArray arrayWithObjects:backview, nil];
    [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:0] animated:YES];
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
     value2=1;
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
