//
//  StartScreen10.m
//  Gospel
//
//  Created by Vibha on 11/9/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "StartScreen10.h"
#import "StartScreen12.h"
#import "GoodNewsScreen.h"
#import "StartScreen9.h"
#import "GospelViewController.h"

@implementation StartScreen10
@synthesize image,image1,image2,image3,image4,image5;
@synthesize image6,image7,image8,image9,image10,image11;
@synthesize lable1,lable2,lable3,lable,back,text,text1;
int value10=1;

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
    lable.frame=lb1;
    lable.titleLabel.font= [UIFont fontWithName:@"Opificio" size:17.f];
    lable.titleLabel.numberOfLines=2;
    lable.titleLabel.lineBreakMode=YES;
    [lable setTitle:@"     Me too. The Bible says if we've hated someone it's the       same as" forState:UIControlStateNormal];
    lable.backgroundColor=[UIColor blackColor];
    [lable addTarget:self action:@selector(labelTap) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:lable];
    
    text=[[UIButton alloc]init];
    text.frame=CGRectMake(430,270 , 50, 50);
    text.backgroundColor=[UIColor clearColor];
    [text setImage:[UIImage imageNamed:@"texticon.png"] forState:UIControlStateNormal];
    [text addTarget:self action:@selector(showlable) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:text];
    text.hidden=YES;


    
    lb2=CGRectMake(140, 50, 208,193);
    image=[[UIImageView alloc]initWithFrame:lb2];
    [image setImage:[UIImage imageNamed:@"heart.png"]];
    [self.view addSubview:image];
    
    
    lb3=CGRectMake(198,100, 100, 50);  
    text1=[[UILabel alloc]initWithFrame:lb3];
    text1.text=@"HATED";
    text1.font= [UIFont fontWithName:@"Opificio" size:34.f];
    text1.backgroundColor=[UIColor clearColor];
    text1.textColor=[UIColor whiteColor];
    [self.view addSubview:text1];
    
    lb14=CGRectMake(135, 10,231,24);
    image11=[[UIImageView alloc]initWithFrame:lb14];
    [image11 setImage:[UIImage imageNamed:@"but_the_bible_says.png"]];
    [self.view addSubview:image11];
     NSUserDefaults *perf=[NSUserDefaults standardUserDefaults];
   
    NSString *str=[perf objectForKey:@"lableoff"]; 
    if([str isEqualToString:@"1"])
    {
        lable.hidden=YES;
        text.hidden=NO;
        
    }else
    {
        lable.hidden=NO;
        text.hidden=YES;
        
    }
}
-(void)labelTap
{
    lable.hidden=YES;
    text.hidden=NO;
    NSUserDefaults *perf=[NSUserDefaults standardUserDefaults];
    [perf setObject:@"1" forKey:@"lableoff"];
}
-(void)showlable
{
    lable.hidden=NO;
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
    switch (value10)
    {
        case 1:image1.hidden=YES;
            lb3=CGRectMake(170,100, 180, 50);
            text1.frame=lb3;
            text1.text=@"MURDERED";
            [lable setTitle:@"murdering them in our hearts." forState:UIControlStateNormal];

              value10=2;
            break;
        case 2:image.hidden=YES; 
            image5.hidden=YES;
            lable1.hidden=YES;
            lable2.hidden=YES;
            lable3.hidden=YES;
            image11.hidden=YES;
            text1.hidden=YES;
            [lable setTitle:@"So by God's standards we're also MURDERERS." forState:UIControlStateNormal];
            lb14=CGRectMake(80,120, 350,70);
            image10=[[UIImageView alloc]initWithFrame:lb14];
            [image10 setImage:[UIImage imageNamed:@"m_1.png"]];
            [self.view addSubview:image10];
            value10=3;
            break;
        case 3:[self callgiltyanimation];
            value10=4;
            break;
        case 4:image10.hidden=YES;
            image9.hidden=YES;
            lb7=CGRectMake(180, 20, 112, 36);
            image2=[[UIImageView alloc]initWithFrame:lb7];
            [image2 setImage:[UIImage imageNamed:@"Lier_grey.png"]];
            [self.view addSubview:image2];
            lb10=CGRectMake(170, 5, 117, 85);
            image6=[[UIImageView alloc]initWithFrame:lb10];
            [image6 setImage:[UIImage imageNamed:@"guilty_for_grey.png"]];
            [self.view addSubview:image6];
            
            NSUserDefaults *perf1=[NSUserDefaults standardUserDefaults];
            NSString *str=[perf1 objectForKey:@"stolen"];
            if([str isEqualToString:@"1"])
            {
                lb8=CGRectMake(150, 110, 161, 35);
                image3=[[UIImageView alloc]initWithFrame:lb8];
                [image3 setImage:[UIImage imageNamed:@"thieves-grey.png"]];
                [self.view addSubview:image3];
            
                lb11=CGRectMake(170, 92, 117, 85);
                image7=[[UIImageView alloc]initWithFrame:lb11];
                [image7 setImage:[UIImage imageNamed:@"guilty_for_grey.png"]];
                [self.view addSubview:image7];
            }
            if([str isEqualToString:@"1"])
            {
                lb9=CGRectMake(113, 180, 230, 34);
                image4=[[UIImageView alloc]initWithFrame:lb9];
                [image4 setImage:[UIImage imageNamed:@"murderers_grey.png"]];
                [self.view addSubview:image4];
                
                lb12=CGRectMake(170, 170, 117, 85);
                image8=[[UIImageView alloc]initWithFrame:lb12];
                [image8 setImage:[UIImage imageNamed:@"guilty_for_grey.png"]];
                [self.view addSubview:image8];
                [lable setTitle:@"So by God's Standards we are liars, thieves, murderers ..." forState:UIControlStateNormal];
                
            }else
            {
                lb9=CGRectMake(113, 140, 230, 34);
                image4=[[UIImageView alloc]initWithFrame:lb9];
                [image4 setImage:[UIImage imageNamed:@"murderers_grey.png"]];
                [self.view addSubview:image4];
                
                lb12=CGRectMake(170, 130, 117, 85);
                image8=[[UIImageView alloc]initWithFrame:lb12];
                [image8 setImage:[UIImage imageNamed:@"guilty_for_grey.png"]];
                [self.view addSubview:image8];
                [lable setTitle:@"So by God's Standards we are liars, murderers ..." forState:UIControlStateNormal];
            }
        
            value10=5;
            break;
        case 5:
            lb1=CGRectMake(0, 270, 480, 50);
            lable.frame=lb1;
            image1.hidden=YES;
[lable setTitle:@"Obviously we shouldn't be allowed into a perfect Heaven;          we deserve punishment in Hell. That's the bad news." forState:UIControlStateNormal];
 
            value10=6;
            break;
        case 6:image1.hidden=YES;
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
            [lable setTitle:@"Me too. The Bible says if we've hated someone it's the same as murdering them in our hearts." forState:UIControlStateNormal];

            NSUserDefaults *perf=[NSUserDefaults standardUserDefaults];
            [perf setObject:@"2" forKey:@"next"];
            tab1=[[GoodNewsScreen alloc]initWithNibName:@"GoodNewsScreen" bundle:[NSBundle mainBundle]];            [self.navigationController pushViewController:tab1 animated:NO];
            [tab1 release];
            break; 
        
    }
}
-(void)callgiltyanimation
{
    image9=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"guilty8.png"]];
    lb13=CGRectMake(-10, -60, 470, 320);
    image9.frame=lb13;
    image9.animationImages =[NSArray arrayWithObjects:
                            [UIImage imageNamed:@"guilty3.png"],
                             [UIImage imageNamed:@"guilty4.png"],
                             [UIImage imageNamed:@"guilty5.png"],
                             [UIImage imageNamed:@"guilty6.png"],
                             [UIImage imageNamed:@"guilty7.png"],
                             [UIImage imageNamed:@"guilty8.png"],nil];
    [image9 setAnimationRepeatCount:1];
    image9.animationDuration=0.60;
    
    image9.contentMode =UIViewAutoresizingFlexibleWidth;
    [image9 startAnimating];
    [self.view addSubview:image9];
    [self.view bringSubviewToFront:image9];
}

-(IBAction)gobackview:(id)sender
{
    StartScreen9 *backview=[[StartScreen9 alloc]initWithNibName:@"StartScreen9" bundle:nil];
    self.navigationController.viewControllers=[NSArray arrayWithObjects:backview, nil];
    
    [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:0] animated:YES];
}
-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
    image.hidden=NO;
    image1.hidden=NO;
    image11.hidden=NO;
    text1.hidden=NO;
    value10=1;    
    
}
-(void)longTap
{
    NSLog(@"Long Press");
    GospelViewController *Controller=[[GospelViewController alloc]init];
    self.navigationController.viewControllers=[NSArray arrayWithObjects:Controller, nil];
    
    [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:0] animated:YES];
    [self.navigationController popViewControllerAnimated:YES];
    
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
