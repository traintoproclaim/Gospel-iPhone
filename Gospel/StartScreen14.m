//
//  StartScreen14.m
//  Gospel
//
//  Created by Vibha on 11/28/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "StartScreen14.h"
#import "HeavenAction.h"
#import "HellAction.h"
#import "photosview.h"
#import "GospelViewController.h"
#import "StartScreen13.h"
#import "extra7.h"
#import "extra8.h"
#import "newview7.h"



@implementation StartScreen14
@synthesize image1,image,image2,image3,image4,image5,image6,image7,image8,image9,image13,image14,image15,image16,image24,image26,image28,text;
@synthesize image10,image11,image12,image17,image18,image19,image20,pname,image21,image22,image23,image25;
@synthesize lable1,lable2,lable3,back,lable4,image27;
@synthesize myview;

int value14=1;


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
    
    
    myview=[UIView new];
    myview.frame=CGRectMake(250, 12, 200, 200);
    myview.backgroundColor=[UIColor clearColor];
    [self.view addSubview:myview];

    
  self.view.backgroundColor=[UIColor colorWithPatternImage:[UIImage imageNamed:@"background.png"]];
    // Do any additional setup after loading the view from its nib.
    NSUserDefaults *version = [NSUserDefaults standardUserDefaults];
    version1=[version  integerForKey:@"version"];
    NSLog(@"Version type %d",version1);
    if(version1==0)
    {
    
    lb1=CGRectMake(0, 270, 480, 50);
    lable1.frame=lb1;
    lable1.titleLabel.font= [UIFont fontWithName:@"Opificio" size:17.f];
    lable1.titleLabel.numberOfLines=4;
    lable1.titleLabel.lineBreakMode=YES;
[lable1 setTitle:@"  If you did have this event sometime in your life,                   then you are forgiven," forState:UIControlStateNormal];
    lable1.backgroundColor=[UIColor blackColor];
    [lable1 addTarget:self action:@selector(labelTap) forControlEvents:UIControlEventTouchUpInside];
    lable1.titleLabel.textAlignment=UITextAlignmentCenter;
    [self.view addSubview:lable1];
    
    lb4=CGRectMake(40,5,404,96);
    image1=[[UIImageView alloc]initWithFrame:lb4];
    [image1 setImage:[UIImage imageNamed:@"page-no-28A.png"]];
    [self.view addSubview:image1];
        
    lb3=CGRectMake(180,110,133,126);
    image25=[[UIImageView alloc]initWithFrame:lb3];
    [image25 setImage:[UIImage imageNamed:@"25-body-normal.png"]];
    [self.view addSubview:image25];
    }
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
    switch (value14)
    {
        case 1:
            
            lb5=CGRectMake(187,245, 118,21);
            image3=[[UIImageView alloc]initWithFrame:lb5];
            [image3 setImage:[UIImage imageNamed:@"Perfect_1.png"]];
            [self.view addSubview:image3];
                lable1.frame=CGRectMake(0, 270, 480, 50);
            [lable1 setTitle:@"have a perfect record. " forState:UIControlStateNormal];             
            value14=2;
            break;
        case 2:
            
            lb7=CGRectMake(320,168, 65,46);
            image2=[[UIImageView alloc]initWithFrame:lb7];
            [image2 setImage:[UIImage imageNamed:@"Heaven_1.png"]];
            [self.view addSubview:image2];
            [lable1 setTitle:@"and God would welcome you into Heaven."forState:UIControlStateNormal]; 
            value14=3;
            break;
        case 3:
            image2.hidden=YES;
            image3.hidden=YES;
            [image1 setImage:[UIImage imageNamed:@"b_d_f.png"]];
            [self callcrossimage];
            
            lable1.frame=CGRectMake(0, 270, 480, 50);
[lable1 setTitle:@"   But if you did not have this event, then you are not              forgiven,"forState:UIControlStateNormal];    
          
            value14=4;
            break;
        case 4:
            [image25 setImage:[UIImage imageNamed:@"25-body.png"]];
            lb9=CGRectMake(180,245, 138,21);
            image5=[[UIImageView alloc]initWithFrame:lb9];
            [image5 setImage:[UIImage imageNamed:@"Imperfect_1.png"]];
            [self.view addSubview:image5];
            [lable1 setTitle:@"have an imperfect record and remember," forState:UIControlStateNormal];     
            value14=5;
            break; 
        case 5:
            
            lb10=CGRectMake(320,190, 65,46);
            image6=[[UIImageView alloc]initWithFrame:lb10];
            [image6 setImage:[UIImage imageNamed:@"hell_1.png"]];
            [self.view addSubview:image6];
            lable1.frame=CGRectMake(0, 270, 480, 50);
            [lable1 setTitle:@"God would have to be just and send you to Hell." forState:UIControlStateNormal];    
            value14=6;
            break;
       
        case 6:
            image4.hidden=YES;
            image5.hidden=YES;
            image6.hidden=YES;
            image19.hidden=YES;
            image20.hidden=YES;
            image21.hidden=YES;
            image22.hidden=YES;
            image23.hidden=YES;
            image24.hidden=YES;
            image25.hidden=YES;
            image1.hidden=YES;
            image26.hidden=YES;
            image27.hidden=YES;
            image28.hidden=YES;
            
            extra8 *ta=[[extra8 alloc]initWithNibName:@"extra8" bundle:[NSBundle mainBundle]];            [self.navigationController pushViewController:ta animated:NO];
            [ta release];
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

-(void)callbodyinhell
{
       [lable1 setTitle:@"" forState:UIControlStateNormal]; 
      image27=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"1-body.png"]];
    lb14=CGRectMake(20,40,212,212);;
    image27.frame=lb14;
    image27.animationImages =[NSArray arrayWithObjects:
                              [UIImage imageNamed:@"7-body.png"],
                              [UIImage imageNamed:@"b8.png"],
                              [UIImage imageNamed:@"b9.png"],
                              [UIImage imageNamed:@"b10.png"],
                              [UIImage imageNamed:@"b11.png"],
                              [UIImage imageNamed:@"b12.png"],
                              [UIImage imageNamed:@"b13.png"],
                              [UIImage imageNamed:@"b14.png"],
                              [UIImage imageNamed:@"1-body.png"],
                                                            nil];
    [image27 setAnimationRepeatCount:1];
    image27.animationDuration= 1.0f;
    
    image27.contentMode =UIViewAutoresizingFlexibleWidth;
    [image27 startAnimating];
    [self.view addSubview:image27];
    [self.view bringSubviewToFront:image27];
    
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

-(void)calljesusanimation
{
    
    image24=[UIImageView new];
    UIImage *img4=[UIImage imageNamed:@"jesus_white_icon1.png"];
    
    image24.image=img4;
    image24.frame=CGRectMake((myview.frame.size.width-img4.size.width)/2, -30, img4.size.width, img4.size.height);
    image24.animationImages =[NSArray arrayWithObjects:
                              
                              [UIImage imageNamed:@"jesus_white_icon2.png"],
                              [UIImage imageNamed:@"jesus_white_icon3.png"],
                              [UIImage imageNamed:@"jesus_white_icon4.png"],
                              [UIImage imageNamed:@"jesus_white_icon5.png"],
                              [UIImage imageNamed:@"jesus_white_icon6.png"],
                              [UIImage imageNamed:@"jesus_white_icon7.png"],
                              [UIImage imageNamed:@"jesus_white_icon8.png"],
                              [UIImage imageNamed:@"jesus_white_icon9.png"],
                              [UIImage imageNamed:@"jesus_white_icon10.png"],
                              [UIImage imageNamed:@"jesus_white_icon1.png"],nil];
    [image24 setAnimationRepeatCount:1];
    image24.animationDuration= 1.0;
    
    image24.contentMode =UIViewAutoresizingFlexibleWidth;
    [image24 startAnimating];
     [self.myview addSubview:image24];
    [self.myview bringSubviewToFront:image24];
    
}

-(void)callglobeimage
{
    
    image23=[UIImageView new];
    UIImage *img3=[UIImage imageNamed:@"glob12.png"];
    image23.image=img3;
    image23.frame=CGRectMake((myview.frame.size.width-img3.size.width)/2, 15, img3.size.width, img3.size.height);
    image23.animationImages =[NSArray arrayWithObjects:
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
    [image23 setAnimationRepeatCount:100];
    image23.animationDuration= 2.0;
    
    image23.contentMode =UIViewAutoresizingFlexibleWidth;
    [image23 startAnimating];
    [self.myview addSubview:image23];
    [self.myview bringSubviewToFront:image23];
}

-(void)callglobebodyani
{
    image11=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"7-body.png"]];
    lb14=CGRectMake(20,40,212,212);;
    image11.frame=lb14;
    image11.animationImages =[NSArray arrayWithObjects:
                              [UIImage imageNamed:@"1-body.png"],
                              [UIImage imageNamed:@"2-body.png"],
                              [UIImage imageNamed:@"3-body.png"],
                              [UIImage imageNamed:@"4-body.png"],
                              [UIImage imageNamed:@"5-body.png"],
                              [UIImage imageNamed:@"6-body.png"],
                              [UIImage imageNamed:@"7-body.png"],
                             nil];
    [image11 setAnimationRepeatCount:1];
    image11.animationDuration= 1.00f;
    
    image11.contentMode =UIViewAutoresizingFlexibleWidth;
    [image11 startAnimating];
    [self.view addSubview:image11];
    [self.view bringSubviewToFront:image11];
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
-(void)callcrossimage
{
    image26=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"c8.png"]];
    lb15=CGRectMake(192, 4, 97, 97);
    image26.frame=lb15;
    image26.animationImages =[NSArray arrayWithObjects:
                              [UIImage imageNamed:@"c1.png"],
                              [UIImage imageNamed:@"c2.png"],
                              [UIImage imageNamed:@"c3.png"],
                              [UIImage imageNamed:@"c4.png"],
                              [UIImage imageNamed:@"c5.png"],
                              [UIImage imageNamed:@"c6.png"],
                              [UIImage imageNamed:@"c7.png"],
                              [UIImage imageNamed:@"c8.png"],nil];
    [image26 setAnimationRepeatCount:1];
    image26.animationDuration= 0.40;
    
    image26.contentMode =UIViewAutoresizingFlexibleWidth;
    [image26 startAnimating];
    [self.view addSubview:image26];
    [self.view bringSubviewToFront:image26];
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
    value14=1;    
    
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
