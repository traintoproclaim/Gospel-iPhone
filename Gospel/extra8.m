//
//  extra8.m
//  Gospel
//
//  Created by Vibha on 1/7/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "extra8.h"
#import "GospelViewController.h"
#import "StartScreen14.h"
#import "extra10.h"
#import "extra7.h"
#import "long4.h"

@implementation extra8
@synthesize back,lable1,lable2,lable3,image7,image8,image9,image17,image18,image14,image,text;
@synthesize customView;
int ex8=1;

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
    lable1.backgroundColor=[UIColor blackColor];
    [lable1 addTarget:self action:@selector(labelTap) forControlEvents:UIControlEventTouchUpInside];
    lable1.titleLabel.textAlignment=UITextAlignmentCenter;
    [self.view addSubview:lable1];

      
    lb6=CGRectMake(160, 120, 200, 100);
    lable2=[[UILabel alloc]initWithFrame:lb6];
    lable2.textColor=[UIColor whiteColor];
    lable2.font= [UIFont fontWithName:@"Opificio" size:24.f];
    lable2.text=@"LET ME ASK YOU";
    [lable1 setTitle:@"Now let me ask you" forState:UIControlStateNormal];
    lable2.backgroundColor=[UIColor clearColor];
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
    switch (ex8)
    {
   
        case 1:
             [lable1 setTitle:@"an extremely important question." forState:UIControlStateNormal];
            [self calquestionimages];
            lb3=CGRectMake(95, 180, 350, 90);
            lable3=[[UILabel alloc]initWithFrame:lb3];
            lable3.text=@"AN EXTREMELY IMPORTANT QUESTION";
            lable3.font= [UIFont fontWithName:@"Opificio" size:19.f];
            lable3.textColor=[UIColor blackColor];
            lable3.lineBreakMode=UILineBreakModeWordWrap;
            lable3.numberOfLines=2;
            lable3.backgroundColor=[UIColor clearColor];
            [self.view addSubview:lable3];
            ex8=2;
            break;
            
        case 2:lable3.hidden=YES;
            image.hidden=YES;
            lable2.hidden=YES;
            
            lb14=CGRectMake(165,80, 138,122);
            image14=[[UIImageView alloc]initWithFrame:lb14];
            [image14 setImage:[UIImage imageNamed:@"books.png"]];
            [self.view addSubview:image14];
             [lable1 setTitle:@"If everything I’ve told you today from the Bible is true," forState:UIControlStateNormal]; 
            
            ex8=3;
            break;
        case 3:
            tab3=[[extra10 alloc]initWithNibName:@"extra10" bundle:[NSBundle mainBundle]];            [self.navigationController pushViewController:tab3 animated:NO];
            [tab3 release];
     
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
-(void)calquestionimages
{
    image=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"qus11.png"]];
    lb2=CGRectMake(180, 10, 116, 116);
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
    NSUserDefaults *version = [NSUserDefaults standardUserDefaults];
   NSInteger version1=[version  integerForKey:@"version"];
    if(version1==0)
    {
    StartScreen14 *backview=[[StartScreen14 alloc]initWithNibName:@"StartScreen14" bundle:nil];
    self.navigationController.viewControllers=[NSArray arrayWithObjects:backview, nil];
    
    [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:0] animated:YES];
    }else
    {
        long4 *backview=[[long4 alloc]initWithNibName:@"long4" bundle:nil];
        self.navigationController.viewControllers=[NSArray arrayWithObjects:backview, nil];
        
        [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:0] animated:YES];
    }
}
-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
    lable2.hidden=NO;
    ex8=1;    
    
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
    return (interfaceOrientation == UIInterfaceOrientationLandscapeLeft||interfaceOrientation == UIInterfaceOrientationLandscapeRight);}

@end
