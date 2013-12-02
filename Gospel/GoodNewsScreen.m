//
//  GoodNewsScreen.m
//  Gospel
//
//  Created by Vibha on 12/7/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "GoodNewsScreen.h"
#import "StartScreen12.h"
#import "GospelViewController.h"
#import "StartScreen22.h"
#import "StartScreen20.h"
#import "StartScreen10.h"
@implementation GoodNewsScreen
@synthesize lable1,image,back,text;
int gn=1;

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
    lb2=CGRectMake(0, 0, 480,270);
    image=[[UIImageView alloc]initWithFrame:lb2];
    [image setImage:[UIImage imageNamed:@"goodnews.png"]];
    [self.view addSubview:image];

    lb1=CGRectMake(0, 270, 480, 50);
    lable1.frame=lb1;
    lable1.titleLabel.font= [UIFont fontWithName:@"Opificio" size:17.f];
    lable1.titleLabel.numberOfLines=2;
    lable1.titleLabel.lineBreakMode=YES;
    [lable1 setTitle:@"But the good news is that God doesn’t want anyone to go        there." forState:UIControlStateNormal];
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

   
    back=[UIButton buttonWithType:UIButtonTypeCustom];
    back.frame=CGRectMake(0,0, 35, 30);
    UIImage *img1=[UIImage imageNamed:@"back@1x.png"];
    [back setImage:img1 forState:UIControlStateNormal];
    [back setImage:[UIImage imageNamed:@"back@1x.png"] forState:UIControlStateNormal];
    [back setImage:[UIImage imageNamed:@"back@1x.png"] forState:UIControlStateHighlighted];
    [back setImage:[UIImage imageNamed:@"back@1x.png"] forState:UIControlStateSelected];
    [back addTarget:self action:@selector(gobackview:) forControlEvents:UIControlEventTouchUpInside];
    [back setBackgroundColor:[UIColor clearColor]];
    [self.view addSubview:back];
    [self.view bringSubviewToFront:back];
}
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self performSelector:@selector(longTap) withObject:nil afterDelay:2.0];
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
      [NSObject cancelPreviousPerformRequestsWithTarget:self];

    switch (gn)
    {
        case 1:image.hidden=YES;
             [lable1 setTitle:@"But the good news is that God doesn’t want anyone to go there." forState:UIControlStateNormal];
            tab1=[[StartScreen12 alloc]initWithNibName:@"StartScreen12" bundle:[NSBundle mainBundle]];            [self.navigationController pushViewController:tab1 animated:NO];
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
-(IBAction)gobackview:(id)sender
{
    NSUserDefaults *perf=[NSUserDefaults standardUserDefaults];
    
    NSString *str=[perf objectForKey:@"next"];
    if([str isEqualToString:@"1"])
    {
        StartScreen20 *backview=[[StartScreen20 alloc]initWithNibName:@"StartScreen20" bundle:nil];
        self.navigationController.viewControllers=[NSArray arrayWithObjects:backview, nil];
        
        [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:0] animated:YES]; 
    }
    if([str isEqualToString:@"2"])
    {
        StartScreen10 *backview=[[StartScreen10 alloc]initWithNibName:@"StartScreen10" bundle:nil];
        self.navigationController.viewControllers=[NSArray arrayWithObjects:backview, nil];
        
        [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:0] animated:YES];
    }
    if([str isEqualToString:@"3"])
    {
    StartScreen22 *backview=[[StartScreen22 alloc]initWithNibName:@"StartScreen22" bundle:nil];
    self.navigationController.viewControllers=[NSArray arrayWithObjects:backview, nil];
    
    [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:0] animated:YES];
    }
}
-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
    image.hidden=NO;
    gn=1;    
    
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
