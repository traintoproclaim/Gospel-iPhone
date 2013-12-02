//
//  longnext.m
//  Gospel
//
//  Created by Vibha on 1/21/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "longnext.h"
#import "GospelViewController.h"
#import "long2.h"
#import "long1.h"

@implementation longnext
@synthesize image1,image,image2,image3,image4,image5,image6,image7,image8,image9,image13,image14,image15,image16,image24,image26,image28,text;
@synthesize image10,image11,image12,image17,image18,image19,image20,pname,image21,image22,image23,image25;
@synthesize lable1,lable2,lable3,back,lable4,image27;
@synthesize myview;

int longval1=1;
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
    // Do any additional setup after loading the view from its nib.
    
    lb1=CGRectMake(0, 270, 480, 50);
    lable1.frame=lb1;
    lable1.titleLabel.font= [UIFont fontWithName:@"Opificio" size:17.f];
    lable1.titleLabel.numberOfLines=4;
    lable1.titleLabel.lineBreakMode=YES;
    [lable1 setTitle:@"  Smiling, Jesus would say, \"I took the punishment for you,       when I died on the cross.\""forState:UIControlStateNormal];
    lable1.backgroundColor=[UIColor blackColor];
    [lable1 addTarget:self action:@selector(labelTap) forControlEvents:UIControlEventTouchUpInside];
    lable1.titleLabel.textAlignment=UITextAlignmentCenter;
    [self.view addSubview:lable1];   
    NSUserDefaults *version = [NSUserDefaults standardUserDefaults];
    version1=[version  integerForKey:@"version"];
    NSLog(@"Version type %d",version1);

    lb11=CGRectMake(60,70,96,113);
    image7=[[UIImageView alloc]initWithFrame:lb11];
    [image7 setImage:[UIImage imageNamed:@"cross-grey.png"]];
    [self.view addSubview:image7];
    
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
    switch (longval1)
    {
        case 1:
            lb27=CGRectMake(220,70, 204,121);
            image28=[[UIImageView alloc]initWithFrame:lb27];
            [image28 setImage:[UIImage imageNamed:@"transfer_you.png"]];
            [self.view addSubview:image28];
            [self callsoultranferyou];
            [lable1 setTitle:@"    \"I gave you my perfect record when you turned and            surrendered to Me. Welcome into Heaven!\" "forState:UIControlStateNormal];   
            longval1=2;
            break;
        case 2:
            lable1.frame=CGRectMake(0, 268, 480, 63);
            lable1.titleLabel.font= [UIFont fontWithName:@"Opificio" size:16.2f];
            [lable1 setTitle:@"Now that’s amazing. Jesus has done something for us we could    never do for ourselves. That’s why He’s so incredible!" forState:UIControlStateNormal]; 
            longval1=3;
            break;
        case 3:
            image28.hidden=YES;
            image8.hidden=YES;
            image7.hidden=YES;  
            lb13=CGRectMake(50,60, 389,89);
            image9=[[UIImageView alloc]initWithFrame:lb13];
            [image9 setImage:[UIImage imageNamed:@"timeline_whole.png"]];
            [self.view addSubview:image9];
            lable1.frame=CGRectMake(0, 270, 480, 50);
            lable1.titleLabel.font= [UIFont fontWithName:@"Opificio" size:17.f];
    [lable1 setTitle:@"  But if you did not have this event, This is what it would            be like" forState:UIControlStateNormal];      
            [self callcrossimage1];

            longval1=4;
            break;
        case 4: image9.image=[UIImage imageNamed:@"timeline_whole1.png"];
            lable1.frame=CGRectMake(0, 270, 480, 50);
            [lable1 setTitle:@"for you at death." forState:UIControlStateNormal]; 
            longval1=5;
            break;
        case 5:image28.hidden=YES;
            image8.hidden=YES;
            image7.hidden=YES; 
            image9.hidden=YES;
            long2 *ta=[[long2 alloc]initWithNibName:@"long2" bundle:[NSBundle mainBundle]];            [self.navigationController pushViewController:ta animated:NO];
            [ta release];

            break;
    }
}
-(void)callcrossimage1
{
    image10=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"c8.png"]];
    lb15=CGRectMake(192,70, 97,97);
    image10.frame=lb15;
    image10.animationImages =[NSArray arrayWithObjects:
                              [UIImage imageNamed:@"c1.png"],
                              [UIImage imageNamed:@"c2.png"],
                              [UIImage imageNamed:@"c3.png"],
                              [UIImage imageNamed:@"c4.png"],
                              [UIImage imageNamed:@"c5.png"],
                              [UIImage imageNamed:@"c6.png"],
                              [UIImage imageNamed:@"c7.png"],
                              [UIImage imageNamed:@"c8.png"],nil];
    [image10 setAnimationRepeatCount:1];
    image10.animationDuration= 0.40;
    
    image10.contentMode =UIViewAutoresizingFlexibleWidth;
    [image10 startAnimating];
    [self.view addSubview:image10];
    [self.view bringSubviewToFront:image10];
}
-(void)callsoultranferyou
{
    
    image8=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"transfer_you7.png"]];
    lb12=CGRectMake(220,70, 204,121);
    image8.frame=lb12;
    image8.animationImages =[NSArray arrayWithObjects:
                             [UIImage imageNamed:@"transfer_you.png"],
                             [UIImage imageNamed:@"transfer_you2.png"],
                             [UIImage imageNamed:@"transfer_you3.png"],
                             [UIImage imageNamed:@"transfer_you4.png"],
                             [UIImage imageNamed:@"transfer_you5.png"],
                             [UIImage imageNamed:@"transfer_you6.png"],
                             [UIImage imageNamed:@"transfer_you7.png"],
                             nil];
    [image8 setAnimationRepeatCount:1];
    
    [NSTimer scheduledTimerWithTimeInterval:2.0
                                     target:self selector:@selector(startAnimations:)
                                   userInfo:nil
                                    repeats:NO];
    
    
}
- (void)startAnimations:(NSTimer *)timer
{
    image28.hidden=YES;
    image8.animationDuration= 2.0;
    
    image8.contentMode =UIViewAutoresizingFlexibleWidth;
    [image8 startAnimating];
    [self.view addSubview:image8];
    [self.view bringSubviewToFront:image8];
    [timer invalidate];
}

-(IBAction)gobackview:(id)sender
{
    long1 *backview=[[long1 alloc]initWithNibName:@"long1" bundle:nil];
    self.navigationController.viewControllers=[NSArray arrayWithObjects:backview, nil];
    
    [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:0] animated:YES];
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
   
    image7.hidden=NO;
    longval1=1;    
    
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
