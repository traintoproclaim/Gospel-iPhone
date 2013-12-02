//
//  long1.m
//  Gospel
//
//  Created by Vibha on 1/21/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "long1.h"
#import "long2.h"
#import "GospelViewController.h"
#import "extra7.h"
#import "longnext.h"
#import "newview7.h"

@implementation long1
@synthesize image1,image,image2,image3,image4,image5,image6,image7,image8,image9,image13,image14,image15,image16,image24,image26,image28,text;
@synthesize image10,image11,image12,image17,image18,image19,image20,pname,image21,image22,image23,image25;
@synthesize lable1,lable2,lable3,back,lable4,image27;
@synthesize myview;

int longval=1;


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
  
    NSUserDefaults *version = [NSUserDefaults standardUserDefaults];
    version1=[version  integerForKey:@"version"];
    NSLog(@"Version type %d",version1);
    
    
    lb1=CGRectMake(0, 270, 480, 50);
    lable1.frame=lb1;
    lable1.titleLabel.font= [UIFont fontWithName:@"Opificio" size:17.f];
    lable1.titleLabel.numberOfLines=4;
    lable1.titleLabel.lineBreakMode=YES;
    [lable1 setTitle:@"      He would look at you and say, “Welcome to Heaven,            my beautiful child, I love you!”" forState:UIControlStateNormal];
    lable1.backgroundColor=[UIColor blackColor];
    [lable1 addTarget:self action:@selector(labelTap) forControlEvents:UIControlEventTouchUpInside];
     lable1.titleLabel.textAlignment=UITextAlignmentCenter;
    [self.view addSubview:lable1];        
    
    lb4=CGRectMake(55, 50, 125,161);
    image1=[[UIImageView alloc]initWithFrame:lb4];
    [image1 setImage:[UIImage imageNamed:@"you-with-body.png"]];
    [self.view addSubview:image1];
    
    lb5=CGRectMake(65,220, 118,21);
    image3=[[UIImageView alloc]initWithFrame:lb5];
    [image3 setImage:[UIImage imageNamed:@"Perfect_1.png"]];
    [self.view addSubview:image3];
    
    lb7=CGRectMake(185,165, 65,46);
    image2=[[UIImageView alloc]initWithFrame:lb7];
    [image2 setImage:[UIImage imageNamed:@"Heaven_1.png"]];
    [self.view addSubview:image2];
  
    
    
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

- (void)viewDidUnload
{
    [super viewDidUnload];
    
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
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
 
    [self performSelector:@selector(longTap) withObject:nil afterDelay:2.0];
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
 
    [NSObject cancelPreviousPerformRequestsWithTarget:self];
    switch (longval)
    {
        case 1:
            image1.hidden=YES;
            image2.hidden=YES;
            image3.hidden=YES;
            [lable1 setTitle:@"    And you will say, “But I broke your laws? Shouldn’t I be                 punished and go to Hell?" forState:UIControlStateNormal]; 
            
            lb8=CGRectMake(275,50, 125,161);
            image4=[[UIImageView alloc]initWithFrame:lb8];
            [image4 setImage:[UIImage imageNamed:@"Aall-of-us-with-body.png"]];
            [self.view addSubview:image4];
            
            lb9=CGRectMake(275,220, 138,21);
            image5=[[UIImageView alloc]initWithFrame:lb9];
            [image5 setImage:[UIImage imageNamed:@"Imperfect_1.png"]];
            [self.view addSubview:image5];
            
            lb10=CGRectMake(395,165, 65,46);
            image6=[[UIImageView alloc]initWithFrame:lb10];
            [image6 setImage:[UIImage imageNamed:@"hell_1.png"]];
            [self.view addSubview:image6];
            longval=2;

            break;
        case 2:image1.hidden=YES;
            image2.hidden=YES;
            image3.hidden=YES;
            image4.hidden=YES;
            image5.hidden=YES;
            image6.hidden=YES;

            
            longnext *ta=[[longnext alloc]initWithNibName:@"longnext" bundle:[NSBundle mainBundle]];            [self.navigationController pushViewController:ta animated:NO];
            [ta release];
 
           

                        
            break;
    }
}
-(IBAction)gobackview:(id)sender
{
    newview7 *backview=[[newview7 alloc]initWithNibName:@"newview7" bundle:nil];
    self.navigationController.viewControllers=[NSArray arrayWithObjects:backview, nil];
    
    [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:0] animated:YES];
}
-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
    image1.hidden=NO;
    image2.hidden=NO;
    image3.hidden=NO;
    longval=1;    
    
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
     return (interfaceOrientation == UIInterfaceOrientationLandscapeLeft||interfaceOrientation == UIInterfaceOrientationLandscapeRight);
}

@end
