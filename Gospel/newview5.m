//
//  newview5.m
//  Gospel
//
//  Created by Vibha on 2/25/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "newview5.h"
#import "GospelViewController.h"
#import "extra6.h"

@implementation newview5
@synthesize image1,image,image2,image3,image4,image5,image6,image7,image8,image9,image13,image14,image15,image16,image17,image18,name,image19,image20,image21,image22,image23,text;
@synthesize image10,image11,image12,image24,image25;
@synthesize lable1,lable2,lable3,back,gender;
@synthesize lable4,lable5,lable6,lable7,lable8;
int newval4=1;
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
    lb12=CGRectMake(50, 20,404,97);
    image11=[[UIImageView alloc]initWithFrame:lb12];
    [image11 setImage:[UIImage imageNamed:@"event_forgiven.png"]];
    [self.view addSubview:image11];
    lb13=CGRectMake(60,80,377,182);
    image9=[[UIImageView alloc]initWithFrame:lb13];
    [image9 setImage:[UIImage imageNamed:@"Soul-transfer.png"]];
    [self.view addSubview:image9];
}
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self performSelector:@selector(longTap) withObject:nil afterDelay:2.0];
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    [NSObject cancelPreviousPerformRequestsWithTarget:self];
    switch (newval4)
    {
        case 1: 
            image9.hidden=YES;
            [self callsoultransferimages];
            lable1.frame=CGRectMake(0, 270, 480, 50);
            [lable1 setTitle:@"His perfect record when we become a real Christian." forState:UIControlStateNormal]; 
            newval4=2;
            break;
        case 2:
            image9.hidden=YES;
            lb14=CGRectMake(140, 130,213,123);
            image13=[[UIImageView alloc]initWithFrame:lb14];
            [image13 setImage:[UIImage imageNamed:@"rec-list-extradark.png"]];
            [self.view addSubview:image13];
            
            [lable1 setTitle:@"Now we do not have this event by being christened," forState:UIControlStateNormal]; 
            newval4=3;
            break;
        case 3:
            lb1=CGRectMake(0, 270, 480, 50);
            lable1.frame=lb1;
            [lable1 setTitle:@"  baptised, confirmed, praying, going to church, believing             God exists." forState:UIControlStateNormal]; 
            
            newval4=4;           
            
            break;
        case 4:
            [self callcrossimage];
            lb1=CGRectMake(0, 270, 480, 50);
            lable1.frame=lb1;
            [lable1 setTitle:@"These are all good things but none of these will give us a              perfect record." forState:UIControlStateNormal]; 
            newval4=5;
            break;
        case 5:
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
            
            tab1=[[extra7 alloc]initWithNibName:@"extra7" bundle:[NSBundle mainBundle]];            [self.navigationController pushViewController:tab1 animated:NO];
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
-(void)callcrossimage
{
    image14=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"c8.png"]];
    lb15=CGRectMake(190, 140, 97, 97);
    image14.frame=lb15;
    image14.animationImages =[NSArray arrayWithObjects:
                              [UIImage imageNamed:@"c1.png"],
                              [UIImage imageNamed:@"c2.png"],
                              [UIImage imageNamed:@"c3.png"],
                              [UIImage imageNamed:@"c4.png"],
                              [UIImage imageNamed:@"c5.png"],
                              [UIImage imageNamed:@"c6.png"],
                              [UIImage imageNamed:@"c7.png"],
                              [UIImage imageNamed:@"c8.png"],nil];
    [image14 setAnimationRepeatCount:1];
    image14.animationDuration=1.0;
    
    image14.contentMode =UIViewAutoresizingFlexibleWidth;
    [image14 startAnimating];
    [self.view addSubview:image14];
    [self.view bringSubviewToFront:image14];
}
-(void)callsoultransferimages
{
    image9=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"Soul-transfer6.png"]];
    lb10=CGRectMake(60,80,377,182);
    image9.frame=lb10;
    image9.animationImages =[NSArray arrayWithObjects:
                             [UIImage imageNamed:@"Soul-transfer.png"],
                             [UIImage imageNamed:@"Soul-transfer2.png"],
                             [UIImage imageNamed:@"Soul-transfer3.png"],
                             [UIImage imageNamed:@"Soul-transfer4.png"],
                             [UIImage imageNamed:@"Soul-transfer5.png"],
                             [UIImage imageNamed:@"Soul-transfer6.png"],nil];
    [image9 setAnimationRepeatCount:1];
    image9.animationDuration= 1.0;
    
    image9.contentMode =UIViewAutoresizingFlexibleWidth;
    [image9 startAnimating];
    [self.view addSubview:image9];
    [self.view bringSubviewToFront:image9];
    
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
    lb1=CGRectMake(0, 270, 480, 50);
    lable1.frame=lb1;
    lable1.titleLabel.font= [UIFont fontWithName:@"Opificio" size:17.f];
    lable1.titleLabel.numberOfLines=4;
    lable1.titleLabel.lineBreakMode=YES;
    [lable1 setTitle:@"    The only way to be forgiven is through Jesus, by                receiving " forState:UIControlStateNormal]; 
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
    image11.hidden=NO;
    image9.hidden=NO;
    newval4=1; 
    
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
-(IBAction)gobackview:(id)sender
{
    extra6 *backview=[[extra6 alloc]initWithNibName:@"extra6" bundle:nil];
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
