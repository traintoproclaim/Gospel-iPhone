//
//  newview3.m
//  Gospel
//
//  Created by Vibha on 2/25/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "newview3.h"
#import "GospelViewController.h"
#import "StartScreen13.h"

@implementation newview3
@synthesize image1,image,image2,image3,image4,image5,image6,image7,image8,image9,image13,image14,image15,image16,image17,image18,name,image19,image20,image21,image22,image23;
@synthesize image10,image11,image12,image24,image25;
@synthesize lable1,lable2,lable3,back,gender;
@synthesize lable4,lable5,lable6,lable7,lable8,text;
int newval2=1;

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
    
    lb2=CGRectMake(0, -10, 470,320);
    image1=[[UIImageView alloc]initWithFrame:lb2];
    [image1 setImage:[UIImage imageNamed:@"jesus0.png"]];
    [self.view addSubview:image1];
}
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self performSelector:@selector(longTap) withObject:nil afterDelay:2.0];
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    
    [NSObject cancelPreviousPerformRequestsWithTarget:self];
    switch (newval2)
    {
        case 1:[lable1 setTitle:@"I'll send Jesus to earth," forState:UIControlStateNormal];
            
            image1.hidden=YES;
            [self calljesuszoomanimation];
            newval2=2;
             break;
        case 2:image2.hidden=YES;
            image1.hidden=YES;

            [lable1 setTitle:@"as a human being," forState:UIControlStateNormal];
            [self calljesuszoomoutanimation];
            newval2=3;
            break;
        case 3:image3.hidden=YES;
            lb6=CGRectMake(197, 50,75,114);
            image5=[[UIImageView alloc]initWithFrame:lb6];
            [image5 setImage:[UIImage imageNamed:@"img15.png"]];
            [self.view addSubview:image5];
            [lable1 setTitle:@"to live a perfect life" forState:UIControlStateNormal];
            newval2=4;
            break;
        case 4:image5.hidden=YES;
            lb1=CGRectMake(0, 270, 480, 50);
            lable1.frame=lb1;
            lb5=CGRectMake(192, 70,96,113);
            image4=[[UIImageView alloc]initWithFrame:lb5];
            [image4 setImage:[UIImage imageNamed:@"cross-grey.png"]];
            [self.view addSubview:image4];
            image2.hidden=YES;
            
            image2=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"jesus19.png"]];
            lb23=CGRectMake(0, -10, 470,320);
            image2.frame=lb23;
            [self.view addSubview:image2];
            NSUserDefaults *gd = [NSUserDefaults standardUserDefaults];
            gnder1=[gd integerForKey:@"gender"];
            if(gnder1==0)
            {
                [lable1 setTitle:@" and to die a cruel, painful death on a cross to take his               punishment for him." forState:UIControlStateNormal];
                
            }
            if(gnder1==1)
            {
                [lable1 setTitle:@" and to die a cruel, painful death on a cross to take her            punishment for her." forState:UIControlStateNormal];
                
            }
            if(gnder1==2)
            {
                [lable1 setTitle:@"  and to die a cruel, painful death on a cross to take their         punishment for them." forState:UIControlStateNormal];
                
            }
            
            
            newval2=5;
            break;
      /*  case 5:
            lb1=CGRectMake(0, 270, 480, 50);
            lable1.frame=lb1; 
            [lable1 setTitle:@" And He did!" forState:UIControlStateNormal];
            
            newval2=6;
            break;
        case 6: [lable1 setTitle:@"So Jesus died" forState:UIControlStateNormal];
            
            newval2=7;
            break;
        case 7: 
            image4.hidden=YES;
            lb7=CGRectMake(176, -15,124,200);
            image6=[[UIImageView alloc]initWithFrame:lb7];
            [image6 setImage:[UIImage imageNamed:@"jesus_white_icon2.png"]];
            [self.view addSubview:image6];
            [lable1 setTitle:@"and also rose from the dead," forState:UIControlStateNormal];
            newval2=8;
            break;
            
        case 8:image6.hidden=YES;
            
            [self calljesusanimation];
            
            [lable1 setTitle:@"proving He is God." forState:UIControlStateNormal];
            
            newval2=9;
            break;
        case 9: image4.hidden=YES;
            image19.hidden=YES;
            image9.hidden=YES;
            image2.hidden=YES;
            [self simplehearanimation];
            image1.hidden=YES;
            
            lb1=CGRectMake(0, 270, 480, 50);
            lable1.frame=lb1;
            [lable1 setTitle:@"  Out of his amazing love for us. Jesus did something that          we could never do for ourselves." forState:UIControlStateNormal];
            
            newval2=10;
            break;*/
        case 5:image.hidden=YES;
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
            
            tab1=[[newview4 alloc]initWithNibName:@"newview4" bundle:[NSBundle mainBundle]];            [self.navigationController pushViewController:tab1 animated:NO];
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
    StartScreen13 *backview=[[StartScreen13 alloc]initWithNibName:@"StartScreen13" bundle:nil];
    self.navigationController.viewControllers=[NSArray arrayWithObjects:backview, nil];
    
    [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:0] animated:YES];
}

-(void)calljesuszoomoutanimation
{
    image2=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"jesus18.png"]];
    lb3=CGRectMake(0, -10, 470,320);
    image2.frame=lb3;
    image2.animationImages =[NSArray arrayWithObjects:
                             
                             [UIImage imageNamed:@"jesus10.png"],
                             [UIImage imageNamed:@"jesus11.png"],
                             [UIImage imageNamed:@"jesus12.png"],
                             [UIImage imageNamed:@"jesus13.png"],
                             [UIImage imageNamed:@"jesus14.png"],
                             [UIImage imageNamed:@"jesus18.png"],
                             
                             
                             
                             
                             
                             nil];
    [image2 setAnimationRepeatCount:1];
    image2.animationDuration= 1.00;
    
    image2.contentMode =UIViewAutoresizingFlexibleWidth;
    [image2 startAnimating];
    [self.view addSubview:image2];
    [self.view bringSubviewToFront:image2];
}
-(void)calljesuszoomanimation
{
    image2=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"jesus9.png"]];
    lb3=CGRectMake(0, -10, 470,320);
    image2.frame=lb3;
    image2.animationImages =[NSArray arrayWithObjects:
                             [UIImage imageNamed:@"jesus0.png"],
                             [UIImage imageNamed:@"jesus1.png"],
                             [UIImage imageNamed:@"jesus2.png"],
                             [UIImage imageNamed:@"jesus3.png"],
                             [UIImage imageNamed:@"jesus4.png"],
                             [UIImage imageNamed:@"jesus5.png"],
                             [UIImage imageNamed:@"jesus6.png"],
                             [UIImage imageNamed:@"jesus7.png"],
                             [UIImage imageNamed:@"jesus8.png"],
                             [UIImage imageNamed:@"jesus9.png"],
                             nil];
    [image2 setAnimationRepeatCount:1];
    image2.animationDuration= 1.20;
    
    image2.contentMode =UIViewAutoresizingFlexibleWidth;
    [image2 startAnimating];
    [self.view addSubview:image2];
    [self.view bringSubviewToFront:image2];
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
    lable1.titleLabel.numberOfLines=3;
    lable1.titleLabel.lineBreakMode=YES;
    [lable1 setTitle:@"So I have a plan!" forState:UIControlStateNormal];
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
    
    
    image1.hidden=NO;
    newval2=1;  
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
