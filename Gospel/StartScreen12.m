//
//  StartScreen12.m
//  Gospel
//
//  Created by Vibha on 11/19/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "StartScreen12.h"
#import "StartScreen13.h"
#import "GospelViewController.h"
#import "GoodNewsScreen.h"

@implementation StartScreen12

@synthesize image1,image,image2,image3,image4,image5,image6,image7,image8,image9;
@synthesize lable1,back,text;
int value12=1;

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
    
    lb1=CGRectMake(0, 270, 480, 50);
    lable1.frame=lb1;
    lable1.titleLabel.font= [UIFont fontWithName:@"Opificio" size:17.f];
    lable1.titleLabel.numberOfLines=4;
    lable1.titleLabel.lineBreakMode=YES;
    [lable1 setTitle:@"This is where Jesus comes in, the most significant person who has ever lived." forState:UIControlStateNormal];
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

    
    lb2=CGRectMake(210, 10, 49, 46);
    image1=[[UIImageView alloc]initWithFrame:lb2];
    [image1 setImage:[UIImage imageNamed:@"body_small.png"]];
    [self.view addSubview:image1];
    
    lb3=CGRectMake(180, 70, 109, 47);
    image2=[[UIImageView alloc]initWithFrame:lb3];
    [image2 setImage:[UIImage imageNamed:@"jesus_1.png"]];
    [self.view addSubview:image2];
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

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
 
    [self performSelector:@selector(longTap) withObject:nil afterDelay:2.0];
}
-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
     [NSObject cancelPreviousPerformRequestsWithTarget:self];

    switch (value12)
    {
        case 1:lb4=CGRectMake(155, 140, 160, 26);
            image3=[[UIImageView alloc]initWithFrame:lb4];
            [image3 setImage:[UIImage imageNamed:@"BC-AD.png"]];
            [self.view addSubview:image3];
            lable1.frame=CGRectMake(0, 270, 480, 50);
             [lable1 setTitle:@"He's the one who split the timeline into BC & AD," forState:UIControlStateNormal];
        
            value12=2;
            break;
        case 2: lb5=CGRectMake(145, 180, 182, 65);
            image4=[[UIImageView alloc]initWithFrame:lb5];
            [image4 setImage:[UIImage imageNamed:@"charistmas-easter.png"]];
            [self.view addSubview:image4];
            [lable1 setTitle:@"Christmas and Easter are both based on His life." forState:UIControlStateNormal];
         
             value12=3;
            break;   
        case 3:image.hidden=YES;
            image1.hidden=YES;
            image2.hidden=YES;
            image3.hidden=YES;
            image4.hidden=YES;
            image5.hidden=YES;
            image6.hidden=YES;
            image7.hidden=YES;
            image8.hidden=YES;
            image9.hidden=YES;
 
            tab1=[[extra4 alloc]initWithNibName:@"extra4" bundle:[NSBundle mainBundle]];            
            [self.navigationController pushViewController:tab1 animated:NO];
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
-(IBAction)gobackview:(id)sender
{
    GoodNewsScreen *backview=[[GoodNewsScreen alloc]initWithNibName:@"GoodNewsScreen" bundle:nil];
    self.navigationController.viewControllers=[NSArray arrayWithObjects:backview, nil];
    
    [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:0] animated:YES];
    
}
-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
    image1.hidden=NO;
    image2.hidden=NO;
       
   
    
    value12=1;    
    
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
