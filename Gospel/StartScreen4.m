//
//  StartScreen4.m
//  Gospel
//
//  Created by Vibha on 11/8/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "StartScreen4.h"
#import "StartScreen5.h"
#import "StartScreen6.h"
#import "StartScreen3.h"
#import "GospelViewController.h"
#import "extra3.h"

@implementation StartScreen4
@synthesize lable1,image,image1,image2,image3,lable2;
@synthesize image4,lable3,lable4,lable5,yes,no,back,text;
int value4=1;

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
    lb1=CGRectMake(80, 70, 360, 30);
    lable1=[[UILabel alloc]initWithFrame:lb1];
    lable1.text=@"WHEN SOMEONE HAS BROKEN ";
    lable1.font= [UIFont fontWithName:@"Opificio" size:25.f];
    lable1.textColor=[UIColor blackColor];
    lable1.lineBreakMode=UILineBreakModeWordWrap;
    lable1.numberOfLines=2;
    lable1.backgroundColor=[UIColor clearColor];
    [self.view addSubview:lable1];
    lb8=CGRectMake(190,100, 180,30);
    lable3=[[UILabel alloc]initWithFrame:lb8];
    lable3.text=@"THE LAW ";
    lable3.font= [UIFont fontWithName:@"Opificio" size:25.f];
    lable3.textColor=[UIColor blackColor];
    lable3.lineBreakMode=UILineBreakModeWordWrap;
    lable3.numberOfLines=2;
    lable3.backgroundColor=[UIColor clearColor];;
    [self.view addSubview:lable3];
    lb9=CGRectMake(80,130, 360,30);
    lable4=[[UILabel alloc]initWithFrame:lb9];
    lable4.text=@"THERE MUST BE A PUNISHMENT ";
    lable4.font= [UIFont fontWithName:@"Opificio" size:25.f];
    lable4.textColor=[UIColor blackColor];
    lable4.lineBreakMode=UILineBreakModeWordWrap;
    lable4.numberOfLines=2;
    lable4.backgroundColor=[UIColor clearColor];;
    [self.view addSubview:lable4];
    lb10=CGRectMake(120,165, 360,30);
    lable5=[[UILabel alloc]initWithFrame:lb10];
    lable5.text=@"OTHERWISE THERE IS ... ";
    lable5.font= [UIFont fontWithName:@"Opificio" size:25.f];
    lable5.textColor=[UIColor blackColor];
    lable5.lineBreakMode=UILineBreakModeWordWrap;
    lable5.numberOfLines=2;
    lable5.backgroundColor=[UIColor clearColor];;
    [self.view addSubview:lable5];
    
   
}
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
   // NSLog(@"touch began");
    [self performSelector:@selector(longTap) withObject:nil afterDelay:2.0];
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
   // NSLog(@"Touch count %d",value4);
        [NSObject cancelPreviousPerformRequestsWithTarget:self];
    switch (value4)
    {
        case 1: lable1.hidden=YES; 
            lable3.hidden=YES;
            lable4.hidden=YES;
            lable5.hidden=YES;
            lb1=CGRectMake(0, 270, 480, 50);
            lable2.frame=lb1;
            [lable2 setTitle:@"no JUSTICE." forState:UIControlStateNormal];
           // lable2.text=@"no JUSTICE.";
            [self callnojusticeanimation];
            lb3=CGRectMake(100, 180, 288,58);
            image1=[[UIImageView alloc]initWithFrame:lb3];
            [image1 setImage:[UIImage imageNamed:@"no_justice_text.png"]];
            [self.view addSubview:image1];

            value4=2;
            break;
        case 2:image.hidden=YES;
            image1.hidden=YES;
            lb4=CGRectMake(200, 30, 91,36);
            image2=[[UIImageView alloc]initWithFrame:lb4];
            [image2 setImage:[UIImage imageNamed:@"lie.png"]];
            [self.view addSubview:image2];
            [lable2 setTitle:@"For example I've told a lie before. Have you?" forState:UIControlStateNormal];

            
          //  lable2.text=@"For example I've told a lie before. Have you?";
            lb5=CGRectMake(70, 90, 151,150);
             UIImage *img=[UIImage imageNamed:@"yes_btn_selected.png"];
             yes=[UIButton buttonWithType:UIButtonTypeCustom];
             yes.frame=lb5;
            [yes setImage:img forState:UIControlStateNormal];
            [yes setImage:[UIImage imageNamed:@"yes_btn_selected.png"] forState:UIControlStateNormal];
            [yes setImage:[UIImage imageNamed:@"yes_btn.png"] forState:UIControlStateHighlighted];
            [yes setImage:[UIImage imageNamed:@"yes_btn.png"] forState:UIControlStateSelected];
            [yes addTarget:self action:@selector(yesAction:) forControlEvents:UIControlEventTouchUpInside];
            
            [yes setBackgroundColor:[UIColor clearColor]];
            [self.view addSubview:yes];
            [self.view bringSubviewToFront:yes]; 
            
            lb6=CGRectMake(250,90, 151,150);
            UIImage *img1=[UIImage imageNamed:@"no_btn.png"];
            no=[UIButton buttonWithType:UIButtonTypeCustom];
            no.frame=lb6;
            [no setImage:img1 forState:UIControlStateNormal];
            [no setImage:[UIImage imageNamed:@"no_btn.png"] forState:UIControlStateNormal];
            [no setImage:[UIImage imageNamed:@"no_btn_selected.png"] forState:UIControlStateHighlighted];
            [no setImage:[UIImage imageNamed:@"no_btn_selected.png"] forState:UIControlStateSelected];
            [no addTarget:self action:@selector(noAction:) forControlEvents:UIControlEventTouchUpInside];
            [no setBackgroundColor:[UIColor clearColor]];
            [self.view addSubview:no];
            [self.view bringSubviewToFront:no]; 
            
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
-(void)callnojusticeanimation
{
    image=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"no_justice8.png"]];
    lb2=CGRectMake(180, 40, 124,124);
    image.frame=lb2;
    image.animationImages =[NSArray arrayWithObjects:
                            [UIImage imageNamed:@"no_justice1.png"],
                            [UIImage imageNamed:@"no_justice2.png"],
                            [UIImage imageNamed:@"no_justice3.png"],
                            [UIImage imageNamed:@"no_justice4.png"],
                            [UIImage imageNamed:@"no_justice5.png"],
                            [UIImage imageNamed:@"no_justice6.png"],
                            [UIImage imageNamed:@"no_justice7.png"],
                            [UIImage imageNamed:@"no_justice8.png"],nil];
    [image setAnimationRepeatCount:1];
    image.animationDuration= 0.60;
    
    image.contentMode =UIViewAutoresizingFlexibleWidth;
    [image startAnimating];
    [self.view addSubview:image];
    [self.view bringSubviewToFront:image];
}

-(IBAction)yesAction:(id)sender
{
    image2.hidden=YES;
    yes.hidden=YES;
    no.hidden=YES;
    lable2.titleLabel.text=nil;
    
    tab1=[[StartScreen5 alloc]initWithNibName:@"StartScreen5" bundle:[NSBundle mainBundle]];            [self.navigationController pushViewController:tab1 animated:NO];
    [tab1 release];  

}
-(IBAction)noAction:(id)sender
{
    image2.hidden=YES;
    yes.hidden=YES;
    no.hidden=YES;
    lable2.titleLabel.text=nil;
   
       tab2=[[StartScreen6 alloc]initWithNibName:@"StartScreen6" bundle:[NSBundle mainBundle]];            [self.navigationController pushViewController:tab2 animated:NO];
    [tab2 release]; 

}
-(IBAction)gobackview:(id)sender
{
    extra3 *backview=[[extra3 alloc]initWithNibName:@"extra3" bundle:nil];
    self.navigationController.viewControllers=[NSArray arrayWithObjects:backview, nil];
    
    [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:0] animated:YES];
}
-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
    lb6=CGRectMake(0, 270, 480, 50);
    lable2.frame=lb6;
    lable2.titleLabel.font= [UIFont fontWithName:@"Opificio" size:17.f];
    lable2.titleLabel.numberOfLines=4;
    lable2.titleLabel.lineBreakMode=YES;
    [lable2 setTitle:@"That's because when someone has broken the law there      must be a punishment, otherwise there is ..."forState:UIControlStateNormal];
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
    lable1.hidden=NO;
 
    lable3.hidden=NO;
    lable4.hidden=NO;
    lable5.hidden=NO;
    image2.hidden=YES;
    yes.hidden=YES;
    no.hidden=YES;
    value4=1;
    
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
