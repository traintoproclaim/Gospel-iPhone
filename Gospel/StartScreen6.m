//
//  StartScreen6.m
//  Gospel
//
//  Created by Vibha on 11/9/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "StartScreen6.h"
#import "StartSceen7.h"
#import "StartScreen4.h"
#import "GospelViewController.h"
@implementation StartScreen6
@synthesize image,image1,lable1,image2,lable2,image3,lable3,text,back;
int value6=1;
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
     
    lb1=CGRectMake(120,100, 237,75);
    image=[[UIImageView alloc]initWithFrame:lb1];
    [image setImage:[UIImage imageNamed:@"liars.png"]];
    [self.view addSubview:image];
    
    lb6=CGRectMake(0, 270, 480, 50);
    lable2.frame=lb6;
    lable2.titleLabel.font= [UIFont fontWithName:@"Opificio" size:17.f];
    lable2.titleLabel.numberOfLines=4;
    lable2.titleLabel.lineBreakMode=YES;
    [lable2 setTitle:@" Really? Never in your life? Not even a white lie? Everyone      has at some stagel"forState:UIControlStateNormal];
    lable2.backgroundColor=[UIColor blackColor];
    [lable2 addTarget:self action:@selector(labelTap) forControlEvents:UIControlEventTouchUpInside];
    lable2.titleLabel.textAlignment=UITextAlignmentCenter;
    [self.view addSubview:lable2];
   
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
        lable2.hidden=YES;
        text.hidden=NO;
        
    }else
    {
        lable2.hidden=NO;
        text.hidden=YES;
        
    }


}
-(void)labelTap
{
    lable2.hidden=YES;
    text.hidden=NO;
    NSUserDefaults *perf=[NSUserDefaults standardUserDefaults];
    [perf setObject:@"1" forKey:@"lableoff"];
    

}
-(void)showlable
{
    lable2.hidden=NO;
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

    switch (value6)
    {
        case 1:[self callgiltyanimation];
            value6=2;
            break;

        case 2:
            image1.hidden=YES;
            image2.hidden=YES;
            [lable2 setTitle:@"  Really ? Never in your life? Not even a white lie? Everyone    has at some stagel"forState:UIControlStateNormal];
         
            NSUserDefaults *perf=[NSUserDefaults standardUserDefaults];
            [perf setObject:@"2" forKey:@"next2"];
            tab1=[[StartSceen7 alloc]initWithNibName:@"StartSceen7" bundle:[NSBundle mainBundle]];            [self.navigationController pushViewController:tab1 animated:NO];
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
-(void)callgiltyanimation
{
    image2=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"guilty8.png"]];
    lb2=CGRectMake(-10, -60, 470, 320);
    image2.frame=lb2;
    image2.animationImages =[NSArray arrayWithObjects:
                             [UIImage imageNamed:@"guilty3.png"],
                             [UIImage imageNamed:@"guilty4.png"],
                             [UIImage imageNamed:@"guilty5.png"],
                             [UIImage imageNamed:@"guilty6.png"],
                             [UIImage imageNamed:@"guilty7.png"],
                             [UIImage imageNamed:@"guilty8.png"],nil];
    [image2 setAnimationRepeatCount:1];
    image2.animationDuration= 0.60;
    
    image2.contentMode =UIViewAutoresizingFlexibleWidth;
    [image2 startAnimating];
    [self.view addSubview:image2];
    [self.view bringSubviewToFront:image2];
}
-(IBAction)gobackview:(id)sender
{
    StartScreen4 *backview=[[StartScreen4 alloc]initWithNibName:@"StartScreen4" bundle:nil];
    self.navigationController.viewControllers=[NSArray arrayWithObjects:backview, nil];
    
    [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:0] animated:YES];
}
-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
    image.hidden=NO;
    value6=1;
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
