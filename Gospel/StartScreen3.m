//
//  StartScreen3.m
//  Gospel
//
//  Created by Vibha on 11/8/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "StartScreen3.h"
#import "StartScreen4.h"
#import "StartScreen2.h"
#import "GospelViewController.h"
#import "extra2.h"
#import "extra3.h"


@implementation StartScreen3
@synthesize image,image1,lable1,image2,image3;
@synthesize image4,image5,image6,image7,image8,lable2,lable3,lable4,text,text1;
@synthesize lable5,image9,back,image11,text2,text3;
int value3=1;
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
    
    lb2=CGRectMake(140, 30, 208, 193);
      
    lb15=CGRectMake(40,120, 200, 50);  
    text1.frame=lb15;
    text1.text=@"I THOUGHT";
    text1.font= [UIFont fontWithName:@"Opificio" size:34.f];
    text1.backgroundColor=[UIColor clearColor];
    [self.view addSubview:text1];
    
    lb16=CGRectMake(208,120, 100, 50);  
    text2.frame=lb16;
    text2.text=@"GOD";
    text2.font= [UIFont fontWithName:@"Opificio" size:34.f];
    text2.backgroundColor=[UIColor clearColor];
    text2.textColor=[UIColor whiteColor];
    [self.view addSubview:text2];
    
    lb17=CGRectMake(297,120, 200, 50);  
    text3.frame=lb17;
    text3.text=@"LOVES US";
    text3.font= [UIFont fontWithName:@"Opificio" size:34.f];
    text3.backgroundColor=[UIColor clearColor];
     [self.view addSubview:text3];
    
}
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
     [self performSelector:@selector(longTap) withObject:nil afterDelay:2.0];
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
 
    [NSObject cancelPreviousPerformRequestsWithTarget:self];
    switch (value3)
    {
        case 1:
            [lable1 setTitle:@"Well, there is more to this, let me explain." forState:UIControlStateNormal];
            value3=2;
            break;
        case 2:
            image11.hidden=YES;
            text1.hidden=YES;
            text2.hidden=YES;
            text3.hidden=YES;
            
            lb3=CGRectMake(145, 25, 189, 204);
            image2=[[UIImageView alloc]initWithFrame:lb3];
            [image2 setImage:[UIImage imageNamed:@"heart_1.png"]];
            [self.view addSubview:image2];
            
            lb4=CGRectMake(175, 15, 128, 249);
            image3=[[UIImageView alloc]initWithFrame:lb4];
            [image3 setImage:[UIImage imageNamed:@"couple_dark.png"]];
            [self.view addSubview:image3];
            
            [lable1 setTitle:@"Who is someone you really love & care about?" forState:UIControlStateNormal];

            value3=3;
            break;
        case 3:
            image3.hidden=YES;
            image1.hidden=YES;
            lb1=CGRectMake(0, 270, 480, 50);  
            lable1.frame=lb1;
            lb6=CGRectMake(145, 25, 189, 204);
            image9=[[UIImageView alloc]initWithFrame:lb6];
            [image9 setImage:[UIImage imageNamed:@"heart_1.png"]];
            [self.view addSubview:image9];
          
           [self callheartimage];
            
            image9.hidden=YES;
            [lable1 setTitle:@"     Now this would be terrible, but imagine someone            murdered the person you love." forState:UIControlStateNormal];
            value3=4;

            break;
        case 4:
            image1.hidden=YES;
            image2.hidden=YES;
            image3.hidden=YES;
            image4.hidden=YES;
            image5.hidden=YES;
            image6.hidden=YES;
            image7.hidden=YES;
            image8.hidden=YES;
            image9.hidden=YES;
            lable2.hidden=YES;
            lable3.hidden=YES;
            lable5.hidden=YES;
            image11.hidden=YES;
            lable1.titleLabel.text=Nil;

            tab1=[[extra3 alloc]initWithNibName:@"extra3" bundle:[NSBundle mainBundle]];            [self.navigationController pushViewController:tab1 animated:NO];
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
-(void)callheartimage
{
    
    image1=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"heart11_1.png"]];
    
    lb2=CGRectMake(145, 25,189, 204);
    image1.frame=lb2;
    image1.animationImages =[NSArray arrayWithObjects:
                            [UIImage imageNamed:@"heart_1.png"],
                            [UIImage imageNamed:@"heart2_1.png"],
                            [UIImage imageNamed:@"heart3_1.png"],
                            [UIImage imageNamed:@"heart4_1.png"],
                            [UIImage imageNamed:@"heart5_1.png"],
                            [UIImage imageNamed:@"heart6_1.png"],
                            [UIImage imageNamed:@"heart7_1.png"],
                            [UIImage imageNamed:@"heart8_1.png"],
                            [UIImage imageNamed:@"heart9_1.png"],
                            [UIImage imageNamed:@"heart10_1.png"],
                            [UIImage imageNamed:@"heart11_1.png"],
                                                        
                             nil];
    [image1 setAnimationRepeatCount:1];
    image1.contentMode =UIViewAutoresizingFlexibleWidth;

    [NSTimer scheduledTimerWithTimeInterval:2.0
                                     target:self selector:@selector(startAnimations:)
                                   userInfo:nil
                                    repeats:NO];
        
}
- (void)startAnimations:(NSTimer *)timer
{
    image1.animationDuration= 1.40;
    [image1 startAnimating];
    
    [self.view addSubview:image1];
    [self.view bringSubviewToFront:image1];
     [timer invalidate];
}
-(IBAction)gobackview:(id)sender
{
    extra2 *backview=[[extra2 alloc]initWithNibName:@"extra2" bundle:nil];
    self.navigationController.viewControllers=[NSArray arrayWithObjects:backview, nil];
    
    [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:0] animated:YES];}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}
-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
    lb1=CGRectMake(0, 270, 480, 50);  
    lable1.frame=lb1;
    [lable1 setTitle:@"I thought God loves us." forState:UIControlStateNormal];
    lable1.titleLabel.font= [UIFont fontWithName:@"Opificio" size:17.f];
    lable1.titleLabel.numberOfLines=4;
    lable1.titleLabel.lineBreakMode=YES;
    lable1.backgroundColor=[UIColor blackColor];
    [lable1 addTarget:self action:@selector(labelTap) forControlEvents:UIControlEventTouchUpInside];
    lable1.titleLabel.textAlignment=UITextAlignmentCenter;
    [self.view addSubview:lable1];
    
    
    image11.hidden=NO;
    text1.hidden=NO;
    text2.hidden=NO;
    text3.hidden=NO;
    
    
    text=[[UIButton alloc]init];
    text.frame=CGRectMake(430,270 , 50, 50);
    text.backgroundColor=[UIColor clearColor];
    [text setImage:[UIImage imageNamed:@"texticon.png"] forState:UIControlStateNormal];
    [text addTarget:self action:@selector(showlable) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:text];
    text.hidden=YES;
    
    
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
    

    value3=1;
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

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
   return (interfaceOrientation == UIInterfaceOrientationLandscapeLeft||interfaceOrientation == UIInterfaceOrientationLandscapeRight);
}

@end
