//
//  newview7.m
//  Gospel
//
//  Created by Vibha on 2/25/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "newview7.h"
#import "newview6.h"
#import "GospelViewController.h"
#import "long1.h"

@implementation newview7
@synthesize image1,image,image2,image3,image4,image5,image6,image7,image8,image9,image13,image14,image15,image16,image17,image18,name,image19,image20,image21,image22,image23,text;
@synthesize image10,image11,image12,image24,image25;
@synthesize lable1,lable2,lable3,back,gender;
@synthesize lable4,lable5,lable6,lable7,lable8;
int newval7=1;

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
    [self callglobeimage];

}
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self performSelector:@selector(longTap) withObject:nil afterDelay:2.0];
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    [NSObject cancelPreviousPerformRequestsWithTarget:self];
    switch (newval7)
    {
        case 1:image22.hidden=YES;
            lb24=CGRectMake(135,40,217,199);
            image23=[[UIImageView alloc]initWithFrame:lb24];
            [image23 setImage:[UIImage imageNamed:@"jesus-in-heart.png"]];
            [self.view addSubview:image23];
            [lable1 setTitle:@"He deserves to be in the centre of your life." forState:UIControlStateNormal];   
            
            
            newval7=2;
            break;
        case 2:image23.hidden=YES;
            lb25=CGRectMake(155,70,193,156);
            image24=[[UIImageView alloc]initWithFrame:lb25];
            [image24 setImage:[UIImage imageNamed:@"surrender_icon1.png"]];
            [self.view addSubview:image24];
            lable1.frame=CGRectMake(0, 270, 480, 50);
            [lable1 setTitle:@"   Surrendering is making Jesus the number one priority of               our lives." forState:UIControlStateNormal]; 
            newval7=3;
            break;
        case 3:image24.hidden=YES;
            NSUserDefaults *version = [NSUserDefaults standardUserDefaults];
            version1=[version  integerForKey:@"version"];
            NSLog(@"Version type %d",version1);
            
            lb26=CGRectMake(40,5,404,96);
            image25=[[UIImageView alloc]initWithFrame:lb26];
            [image25 setImage:[UIImage imageNamed:@"page-no-28.png"]];
            [self.view addSubview:image25];
            
            back.frame=CGRectMake(0, 0, 35, 30);
            lable1.frame=CGRectMake(0, 270, 480, 50);
            [lable1 setTitle:@"Now, say you die and come before God at Judgment." forState:UIControlStateNormal]; 
            
            newval7=4;
            break;
        case 4:image.hidden=YES;
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
            image13.hidden=YES;
            image14.hidden=YES;
            image15.hidden=YES;
            image16.hidden=YES;
            image17.hidden=YES;
            image18.hidden=YES;
            image19.hidden=YES;
            image20.hidden=YES;
            image21.hidden=YES;
            image22.hidden=YES;
            image23.hidden=YES;
            image24.hidden=YES;
            image25.hidden=YES;
            lable2.hidden=YES;
            lable3.hidden=YES;
            lable4.hidden=YES;
            lable5.hidden=YES;
            lable6.hidden=YES;
            lable7.hidden=YES;
            image15.hidden=YES;
            image16.hidden=YES;
            lable8.hidden=YES;
            lable1.titleLabel.text=nil;
            NSUserDefaults *version0 = [NSUserDefaults standardUserDefaults];
            version1=[version0  integerForKey:@"version"];
            NSLog(@"Version type %d",version1);
            if(version1==0)
            {
                
                tab1=[[StartScreen14 alloc]initWithNibName:@"StartScreen14" bundle:[NSBundle mainBundle]];            [self.navigationController pushViewController:tab1 animated:NO];
                [tab1 release];
            }else
            {
                
                long1 *ta=[[long1 alloc]initWithNibName:@"long1" bundle:[NSBundle mainBundle]];            [self.navigationController pushViewController:ta animated:NO];
                [ta release];
            }
            break;

    }
}
-(void)callglobeimage
{
    image22=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"glob12.png"]];
    lb23=CGRectMake(192, 80, 100, 100);
    image22.frame=lb23;
    image22.animationImages =[NSArray arrayWithObjects:
                              [UIImage imageNamed:@"glob1.png"],
                              [UIImage imageNamed:@"glob2.png"],
                              [UIImage imageNamed:@"glob3.png"],
                              [UIImage imageNamed:@"glob4.png"],
                              [UIImage imageNamed:@"glob5.png"],
                              [UIImage imageNamed:@"glob6.png"],
                              [UIImage imageNamed:@"glob7.png"],
                              [UIImage imageNamed:@"glob8.png"],
                              [UIImage imageNamed:@"glob9.png"],
                              [UIImage imageNamed:@"glob10.png"],
                              [UIImage imageNamed:@"glob11.png"],
                              [UIImage imageNamed:@"glob12.png"],nil];
    [image22 setAnimationRepeatCount:100];
    image22.animationDuration= 4.0;
    
    image22.contentMode =UIViewAutoresizingFlexibleWidth;
    [image22 startAnimating];
    [self.view addSubview:image22];
    [self.view bringSubviewToFront:image22];
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
    lb1=CGRectMake(0, 270, 480, 50);
    lable1.frame=lb1;
    lable1.titleLabel.font= [UIFont fontWithName:@"Opificio" size:17.f];
    lable1.titleLabel.numberOfLines=4;
    lable1.titleLabel.lineBreakMode=YES;
    [lable1 setTitle:@"Because if Jesus made you and the entire universe" forState:UIControlStateNormal];
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
    
    
       image22.hidden=NO;
    newval7=1;  
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
    newview6 *backview=[[newview6 alloc]initWithNibName:@"newview6" bundle:nil];
    self.navigationController.viewControllers=[NSArray arrayWithObjects:backview, nil];
    
    [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:0] animated:YES];
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
