//
//  extra7.m
//  Gospel
//
//  Created by Vibha on 1/7/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "extra7.h"
#import "extra6.h"
#import "GospelViewController.h"
#import "long1.h"
#import "newview5.h"

@implementation extra7
@synthesize image1,image,image2,image3,image4,image5,image6,image7,image8,image9,image13,image14,image15,image16,image17,image18,name,image19,image20,image21,image22,image23,text;
@synthesize image10,image11,image12,image24,image25;
@synthesize lable1,lable2,lable3,back,gender;
@synthesize lable4,lable5,lable6,lable7,lable8;
int ex7=1;

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
    
    lb5=CGRectMake(190, 10, 150, 30);
    lable2=[[UILabel alloc]initWithFrame:lb5];
    lable2.text=@"WE MUST";
    lable2.font= [UIFont fontWithName:@"Opificio" size:24.f];
    lable2.textColor=[UIColor blackColor];
    lable2.lineBreakMode=UILineBreakModeWordWrap;
    lable2.backgroundColor=[UIColor clearColor];
    [self.view addSubview:lable2];
    
    lb16=CGRectMake(70, 60,145,104);
    image15=[[UIImageView alloc]initWithFrame:lb16];
    [image15 setImage:[UIImage imageNamed:@"turn_away_arrow.png"]];
    [self.view addSubview:image15];

}
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
     [self performSelector:@selector(longTap) withObject:nil afterDelay:2.0];
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    [NSObject cancelPreviousPerformRequestsWithTarget:self];
    switch (ex7)
    {
        
        case 1:
            lable1.frame=CGRectMake(0, 270, 480, 50);
[lable1 setTitle:@"   When we are genuinely sorry for breaking God’s laws,                 we must" forState:UIControlStateNormal];
              ex7=2;
            break;
        case 2:
            lb17=CGRectMake(70, 210,161,18);
            image16=[[UIImageView alloc]initWithFrame:lb17];
            [image16 setImage:[UIImage imageNamed:@"turn-away-text.png"]];
            [self.view addSubview:image16];
            lable1.frame=CGRectMake(0, 270, 480, 50);
            [lable1 setTitle:@"make a commitment to TURN away from things like" forState:UIControlStateNormal];
             ex7=3;
            break;
        case 3:lb27=CGRectMake(250, 60, 100, 30);
            lable4=[[UILabel alloc]initWithFrame:lb27];
            lable4.textColor=[UIColor whiteColor];
            lable4.font= [UIFont fontWithName:@"Opificio" size:22.f];
            lable4.text=@"Lying";
            lable4.backgroundColor=[UIColor clearColor];
            [self.view addSubview:lable4];
            
            lb28=CGRectMake(250, 90, 100, 30);
            lable5=[[UILabel alloc]initWithFrame:lb28];
            lable5.textColor=[UIColor whiteColor];
            lable5.font= [UIFont fontWithName:@"Opificio" size:22.f];
            lable5.text=@"Cheating";
            lable5.backgroundColor=[UIColor clearColor];
            [self.view addSubview:lable5];
            
            lb29=CGRectMake(250, 120, 100, 30);
            lable6=[[UILabel alloc]initWithFrame:lb29];
            lable6.textColor=[UIColor whiteColor];
            lable6.font= [UIFont fontWithName:@"Opificio" size:22.f];
            lable6.text=@"Stealing";
            lable6.backgroundColor=[UIColor clearColor];
            [self.view addSubview:lable6];
            
            lb30=CGRectMake(250, 130, 160, 100);
            lable7=[[UILabel alloc]initWithFrame:lb30];
            lable7.textColor=[UIColor whiteColor];
            lable7.font= [UIFont fontWithName:@"Opificio" size:22.f];
            lable7.text=@"Sex outside of Marriage";
            lable7.numberOfLines=2;
            lable7.backgroundColor=[UIColor clearColor];
            [self.view addSubview:lable7];
            
            [lable1 setTitle:@"Lying, cheating, stealing, sex outside of marriage etc ... " forState:UIControlStateNormal];
            
              ex7=4;
            break;
        case 4:
            [lable1 setTitle:@"We’ll never be a perfect person, that’s impossible." forState:UIControlStateNormal];
               ex7=5;
            break;
            /*
        case 5:lable4.hidden=YES;
            lable5.hidden=YES;
            lable6.hidden=YES;
            lable7.hidden=YES;
      
            lb4=CGRectMake(250, 50,180,173);
            image3=[[UIImageView alloc]initWithFrame:lb4];
            [image3 setImage:[UIImage imageNamed:@"heart.png"]];
            [self.view addSubview:image3];
            lable1.frame=CGRectMake(0, 270, 480, 50);
    [lable1 setTitle:@"  Rather, it’s a change of heart; a sincere desire to live life           God’s way." forState:UIControlStateNormal];  
         ;
            ex7=6;
            break;
        case 6:image3.hidden=YES;
            image15.hidden=YES;
            image20.hidden=YES;
            [self callturnimage];
            
            lable1.frame=CGRectMake(0, 270, 480, 50);
            [lable1 setTitle:@"It’s like doing a u-turn with your life." forState:UIControlStateNormal];   
            ex7=7;
            break;
        case 7:image21.hidden=YES;
            image16.hidden=YES;
            lb16=CGRectMake(70, 60,145,104);
            image15=[[UIImageView alloc]initWithFrame:lb16];
            [image15 setImage:[UIImage imageNamed:@"turn_away_arrow.png"]];
            [self.view addSubview:image15];
            
            lb17=CGRectMake(70, 210,161,18);
            image16=[[UIImageView alloc]initWithFrame:lb17];
            [image16 setImage:[UIImage imageNamed:@"turn-away-text.png"]];
            [self.view addSubview:image16];
            
            lb18=CGRectMake(280, 50,193,156);
            image17=[[UIImageView alloc]initWithFrame:lb18];
            [image17 setImage:[UIImage imageNamed:@"surrender_icon1.png"]];
            [self.view addSubview:image17];
            
            lb19=CGRectMake(280, 210,168,18);
            image18=[[UIImageView alloc]initWithFrame:lb19];
            [image18 setImage:[UIImage imageNamed:@"surrender_text.png"]];
            [self.view addSubview:image18];
            [lable1 setTitle:@"We must also SURRENDER our lives to Jesus." forState:UIControlStateNormal];  
           
            ex7=8;
            break;
        case 8:image15.hidden=YES;
            image16.hidden=YES;
            image17.hidden=YES;
            image18.hidden=YES;
            lable2.hidden=YES;
            [lable1 setTitle:@"Because if Jesus made you and the entire universe" forState:UIControlStateNormal];  
                     [self callglobeimage];
            ex7=9;
            break;
        case 9:image22.hidden=YES;
            lb24=CGRectMake(135,40,217,199);
            image23=[[UIImageView alloc]initWithFrame:lb24];
            [image23 setImage:[UIImage imageNamed:@"jesus-in-heart.png"]];
            [self.view addSubview:image23];
            [lable1 setTitle:@"He deserves to be in the centre of your life." forState:UIControlStateNormal];   
         
            
            ex7=10;
            break;
        case 10:image23.hidden=YES;
            lb25=CGRectMake(155,70,193,156);
            image24=[[UIImageView alloc]initWithFrame:lb25];
            [image24 setImage:[UIImage imageNamed:@"surrender_icon1.png"]];
            [self.view addSubview:image24];
            lable1.frame=CGRectMake(0, 270, 480, 50);
[lable1 setTitle:@"   Surrendering is making Jesus the number one priority of               our lives." forState:UIControlStateNormal]; 
            ex7=11;
            break;
        case 11:image24.hidden=YES;
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
           
            ex7=12;
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
            tab1=[[newview6 alloc]initWithNibName:@"newview6" bundle:[NSBundle mainBundle]];            [self.navigationController pushViewController:tab1 animated:NO];
            [tab1 release];
             
            
    }
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
    lb1=CGRectMake(0, 270, 480, 50);
    lable1.frame=lb1;
    lable1.titleLabel.font= [UIFont fontWithName:@"Opificio" size:17.f];
    lable1.titleLabel.numberOfLines=4;
    lable1.titleLabel.lineBreakMode=YES;
    [lable1 setTitle:@"There are two things we must do to have this event." forState:UIControlStateNormal];
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

    
    lable2.hidden=NO;
    image15.hidden=NO;
    ex7=1;  
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
    newview5 *backview=[[newview5 alloc]initWithNibName:@"newview5" bundle:nil];
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
