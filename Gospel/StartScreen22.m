//
//  StartScreen22.m
//  Gospel
//
//  Created by Vibha on 12/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "StartScreen22.h"
#import "StartScreen21.h"
#import "GospelViewController.h"

@implementation StartScreen22
@synthesize image2,image3,image4,image7,image8,image6,lable,image,image1,text;
@synthesize back;
int value22=1;


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

}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.view.backgroundColor=[UIColor colorWithPatternImage:[UIImage imageNamed:@"background.png"]];
    lb2=CGRectMake(80,110, 328,70);
    image=[[UIImageView alloc]initWithFrame:lb2];
    [image setImage:[UIImage imageNamed:@"Idolaters.png"]];
    [self.view addSubview:image];
    [self.view addSubview:image4];
    
    lb12=CGRectMake(0, 270, 480, 50);
    lable.frame=lb12;
    lable.titleLabel.font= [UIFont fontWithName:@"Opificio" size:17.f];
    lable.titleLabel.numberOfLines=2;
    lable.titleLabel.lineBreakMode=YES;
    [lable setTitle:@"The Bible calls this IDOLATRY." forState:UIControlStateNormal];
    lable.backgroundColor=[UIColor blackColor];
    [lable addTarget:self action:@selector(labelTap) forControlEvents:UIControlEventTouchUpInside];
    lable.titleLabel.textAlignment=UITextAlignmentCenter;
    [self.view addSubview:lable];
    
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

    switch (value22)
    {
        case 1:[self callgiltyanimation];
            value22=2;
            break;
        case 2: image.hidden=YES;
            image1.hidden=YES;
            
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
            
            lb12=CGRectMake(170,90, 117, 85);
            image8=[[UIImageView alloc]initWithFrame:lb12];
            [image8 setImage:[UIImage imageNamed:@"guilty_for_grey.png"]];
            [self.view addSubview:image8];
            } if([str isEqualToString:@"1"])
            {
                
                lb9=CGRectMake(113, 185, 230, 34);
                image4=[[UIImageView alloc]initWithFrame:lb9];
                [image4 setImage:[UIImage imageNamed:@"Idolaters-gray.png"]];
                [self.view addSubview:image4];
                
                lb11=CGRectMake(170, 170, 117, 85);
                image7=[[UIImageView alloc]initWithFrame:lb11];
                [image7 setImage:[UIImage imageNamed:@"guilty_for_grey.png"]];
                [self.view addSubview:image7];
                [lable setTitle:@"So by God's Standards we are liars, thieves, idolaters ..." forState:UIControlStateNormal];

            } else
            {
                lb9=CGRectMake(113, 140, 230, 34);
                image4=[[UIImageView alloc]initWithFrame:lb9];
                [image4 setImage:[UIImage imageNamed:@"Idolaters-gray.png"]];
                [self.view addSubview:image4];
                
                lb11=CGRectMake(170, 120, 117, 85);
                image7=[[UIImageView alloc]initWithFrame:lb11];
                [image7 setImage:[UIImage imageNamed:@"guilty_for_grey.png"]];
                [self.view addSubview:image7];
                 [lable setTitle:@"So by God's Standards we are liars, idolaters ..." forState:UIControlStateNormal];

            }
            
            value22=3;
            break; 
        case 3:lable.frame=CGRectMake(0, 270, 480, 50);
    [lable setTitle:@"Obviously we shouldn't be allowed into a perfect Heaven;              we deserve punishment in Hell. That's the bad news."forState:UIControlStateNormal]; 

            value22=4;
            break;
        case 4: image.hidden=YES;
            image1.hidden=YES;
            image2.hidden=YES;
            image3.hidden=YES;
            image4.hidden=YES;
            image6.hidden=YES;
            image7.hidden=YES;
            image8.hidden=YES;
            [lable setTitle:@"The Bible calls this Idolaters"forState:UIControlStateNormal]; 

            NSUserDefaults *perf=[NSUserDefaults standardUserDefaults];
            [perf setObject:@"3" forKey:@"next"];
            tab1=[[GoodNewsScreen alloc]initWithNibName:@"GoodNewsScreen" bundle:[NSBundle mainBundle]];           
            [self.navigationController pushViewController:tab1 animated:NO];
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
    image1=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"guilty8.png"]];
    lb3=CGRectMake(-10, -60, 470, 320);
    image1.frame=lb3;
    image1.animationImages =[NSArray arrayWithObjects:
                             [UIImage imageNamed:@"guilty1.png"],
                             [UIImage imageNamed:@"guilty2.png"],
                             [UIImage imageNamed:@"guilty3.png"],
                             [UIImage imageNamed:@"guilty4.png"],
                             [UIImage imageNamed:@"guilty5.png"],
                             [UIImage imageNamed:@"guilty6.png"],
                             [UIImage imageNamed:@"guilty7.png"],
                             [UIImage imageNamed:@"guilty8.png"],nil];
    [image1 setAnimationRepeatCount:1];
    image1.animationDuration= 0.60;
    
    image1.contentMode =UIViewAutoresizingFlexibleWidth;
    [image1 startAnimating];
    [self.view addSubview:image1];
    [self.view bringSubviewToFront:image1];
}
-(IBAction)gobackview:(id)sender
{
    StartScreen21 *backview=[[StartScreen21 alloc]initWithNibName:@"StartScreen21" bundle:nil];
    self.navigationController.viewControllers=[NSArray arrayWithObjects:backview, nil];
    
    [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:0] animated:YES];

}
-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
    image.hidden=NO;
    
    value22=1;    
    
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
