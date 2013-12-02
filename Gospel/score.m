//
//  score.m
//  Gospel
//
//  Created by Vibha on 11/2/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "score.h"
#import "StartScreen.h"
#import "GospelViewController.h"

@implementation score
@synthesize final,imgview,inst,quizlb,lb1,lb2,lb3,lb4,lb5;
@synthesize quote,next,imgview1;
@synthesize imgview4,imgview2,imgview3,imgview5,defination,text,quote1;


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
    //
    // Do any additional setup after loading the view from its nib.
    self.view.backgroundColor=[UIColor colorWithPatternImage:[UIImage imageNamed:@"background.png"]];
    NSUserDefaults *prefs = [NSUserDefaults standardUserDefaults];
    finalscore=[prefs integerForKey:@"value9"];
    NSLog(@"Final score %d",finalscore);
    final.text=[NSString stringWithFormat:@"%d",finalscore];
    
    CGRect lb=CGRectMake(210, 0, 52, 30);
    CGRect lba=CGRectMake(100, 35, 140, 30);
    CGRect lbb=CGRectMake(244, 36, 40 , 31);
    CGRect fm1=CGRectMake(130,100,117,21);
    CGRect fm2=CGRectMake(130,130,117,21);
    CGRect fm3=CGRectMake(130,160,117,21);
    CGRect fm4=CGRectMake(130,190,117,21);
    CGRect fm5=CGRectMake(130,220,117,21);
    CGRect lb9=CGRectMake(0, 270, 480, 50);
    CGRect lb8=CGRectMake(325, 200, 116, 38);
    CGRect df=CGRectMake(110,90,250,150);

      
    quizlb.frame=lb;
    quizlb.font= [UIFont fontWithName:@"Opificio" size:34.f];
    inst.frame=lba;
    final.font= [UIFont fontWithName:@"Opificio" size:23.f];
    inst.font= [UIFont fontWithName:@"Opificio" size:23.f];
    final.frame=lbb;
    lb1.frame=fm1;
    lb1.font= [UIFont fontWithName:@"Opificio" size:20.f];
    lb2.frame=fm2;
    lb2.font= [UIFont fontWithName:@"Opificio" size:20.f];
    lb3.frame=fm3;
    lb3.font= [UIFont fontWithName:@"Opificio" size:20.f];
    lb4.frame=fm4;
    lb4.font= [UIFont fontWithName:@"Opificio" size:20.f];
    lb5.frame=fm5;
    lb5.font= [UIFont fontWithName:@"Opificio" size:20.f];
    quote.frame=lb9;
    quote.titleLabel.numberOfLines=2;
    quote.backgroundColor=[UIColor blackColor];
    quote.titleLabel.textAlignment=UITextAlignmentCenter;
    quote.titleLabel.lineBreakMode=YES;

    quote.titleLabel.font= [UIFont fontWithName:@"Opificio" size:17.f];
    

    quote.backgroundColor=[UIColor blackColor];
    quote.titleLabel.textAlignment=UITextAlignmentCenter;
    [self.view addSubview:quote];

    next.frame=lb8;
    defination.frame=df;
    defination.font= [UIFont fontWithName:@"Opificio" size:22.f];
    [quote setTitle:[NSString stringWithFormat:@" You scored %d",finalscore] forState:UIControlStateNormal];
    quote1.frame=CGRectMake(0, 270, 480, 50);
    
    
    imgview=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"16.png"]];
    imgview1=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"Cross10.png"]];
    imgview2=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"Cross10.png"]];
    imgview3=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"Cross10.png"]];
    imgview4=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"Cross10.png"]];
    
    defination.hidden=YES;

    text.frame=CGRectMake(430,270 , 50, 50);
    text.backgroundColor=[UIColor clearColor];
    [text addTarget:self action:@selector(showlable) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:text];
    text.hidden=YES;
    
    NSUserDefaults *perf=[NSUserDefaults standardUserDefaults];
    NSString *str=[perf objectForKey:@"lableoff"]; 
    if([str isEqualToString:@"1"])
    {
        quote.hidden=YES;
        text.hidden=NO;
    }else
    {
        quote.hidden=NO;
        text.hidden=YES;
    }

    
      
}
-(void)labelTap
{
    quote.hidden=YES;
    text.hidden=NO;
    NSUserDefaults *perf=[NSUserDefaults standardUserDefaults];
    [perf setObject:@"1" forKey:@"lableoff"];
    
}
-(void)showlable
{
    quote.hidden=NO;
    text.hidden=YES;
    NSUserDefaults *perf=[NSUserDefaults standardUserDefaults];
    [perf setObject:@"0" forKey:@"lableoff"];
    
}

-(IBAction)nextbutton:(id)sender
{ 
         
    NSLog(@"Count %d",count);
    count=count+1;
   
    if(count==1)
    {
        [self campare1];
    }
    if(count==2)
    {
        [self campare2];
    }
    if(count==3)
    {
        [self campare3];
    }
    if(count==4)
    {
        [self campare4];
    }
    if(count==5)
    {
        [self campare5];
    }
    if(count==6)
    {
        lb1.hidden=YES;
        lb2.hidden=YES;
        lb3.hidden=YES;
        lb4.hidden=YES;
        lb5.hidden=YES;
        imgview.hidden=YES;
        imgview1.hidden=YES;
        imgview2.hidden=YES;
        imgview3.hidden=YES;
        imgview4.hidden=YES;
      
        defination.hidden=NO;
        quote.frame=CGRectMake(0, 270, 480, 50);
        
[quote setTitle:@"   Now like I said before I will give you the best definition               you have ever heard of what a Christian is ..."forState:UIControlStateNormal];

  
    }
    if(count==7)
    {
        lb1.hidden=YES;
        lb2.hidden=YES;
        lb3.hidden=YES;
        lb4.hidden=YES;
        lb5.hidden=YES;
        imgview.hidden=YES;
        imgview1.hidden=YES;
        imgview2.hidden=YES;
        imgview3.hidden=YES;
        imgview4.hidden=YES;
       CGRect df=CGRectMake(110,80,138,122);
        defination.hidden=YES; 
         imgview5=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"books.png"]];
        imgview5.frame=df;
        [self.view addSubview:imgview5];
        [self.view bringSubviewToFront:imgview5];
        quote.titleLabel.textAlignment=UITextAlignmentCenter;
        quote.frame=CGRectMake(0, 270, 480, 50);
    [quote setTitle:@"This is also a summary of the message of the entire Bible,       in 6.5 minutes, It will be great to see what you think of it." forState:UIControlStateNormal];
     
    }
     if(count==8)
     {
         imgview.hidden=YES;
         imgview1.hidden=YES;
         imgview2.hidden=YES;
         imgview3.hidden=YES;
         imgview4.hidden=YES;
         imgview5.hidden=YES;
        StartScreen *tab1=[[StartScreen alloc]initWithNibName:@"StartScreen" bundle:[NSBundle mainBundle]];	
         
         [self.navigationController pushViewController:tab1 animated:NO];
         [tab1 release]; 
         

     }
    NSLog(@"Conut1 %d",count);
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self performSelector:@selector(longTap) withObject:nil afterDelay:2.0];
}
-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    
    [NSObject cancelPreviousPerformRequestsWithTarget:self];
    
}  
-(void)longTap
{
    NSLog(@"Long Press");
    GospelViewController *Controller=[[GospelViewController alloc]init];
    self.navigationController.viewControllers=[NSArray arrayWithObjects:Controller, nil];
    
    [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:0] animated:YES];
    [self.navigationController popViewControllerAnimated:YES];
    
}

-(void)campare1
{
  
    if((finalscore>=49)&&count==1)
    {
        imgview.frame=CGRectMake(90,90,180,35);
        quote.frame=CGRectMake(0, 270, 480, 50);
        [quote setTitle:@"According to this you are an ANGEL!  Wow!" forState:UIControlStateNormal];
        [self callcircleimage];
        count=5;
    }
    else
    {
    imgview1.frame=CGRectMake(135,96,93,25);
        
    
    [self callcrossimage];
         imgview1.image=[UIImage imageNamed:@"Cross10.png"];
        quote.frame=CGRectMake(0, 270, 480, 50);
    [quote setTitle:@"49 - 50 is Angelic, so you are not an angel ..." forState:UIControlStateNormal];
         
    }
}
-(void)campare2
{
    
    if((finalscore>=46&&finalscore<=48)&&count==2)
    {
        
        imgview.frame=CGRectMake(90,125,180,30);
        quote.frame=CGRectMake(0, 270, 480, 50);
   [quote setTitle:@"According to this you are Saint ......  Wow!" forState:UIControlStateNormal];         
        [self callcircleimage];
        count=5;

    }else
    {
        imgview2.frame=CGRectMake(135,128,93,25);
        

        [self callcrossimage1];
         imgview2.image=[UIImage imageNamed:@"Cross10.png"];
        quote.frame=CGRectMake(0, 270, 480, 50);
    [quote setTitle:@"46-48 is Saintly, so you are not Saint ..." forState:UIControlStateNormal];  
     
        
    }
    
}
-(void)campare3
{
    if((finalscore>=18&&finalscore<=45)&&count==3)
    {
        imgview.frame=CGRectMake(90,155,180,30);
        quote.frame=CGRectMake(0, 270, 480, 50);
      [quote setTitle:@"According to this you are a good person! [At least you are not struggling or seek help!]" forState:UIControlStateNormal];    
     
        [self callcircleimage];
        count=5;

        
    }
    else
    {
        imgview3.frame=CGRectMake(135,158,93,25);
        
        [self callcrossimage2];
         imgview3.image=[UIImage imageNamed:@"Cross10.png"];
        quote.frame=CGRectMake(0, 270, 480, 50);
        [quote setTitle:@"You have scored under the good rating." forState:UIControlStateNormal];    
       
    }

}
-(void)campare4
{
   
    if((finalscore>=12&&finalscore<=17)&&count==4)
    {
        imgview.frame=CGRectMake(100,186,180,30);
        quote.frame=CGRectMake(0, 270, 480, 50);
[quote setTitle:@"But you have been a lot more honest with me than most                people. Thank you." forState:UIControlStateNormal];   
        [self callcircleimage];
        count=5;

    }else
    {
        imgview4.frame=CGRectMake(135,189,93,25);
        
        
        [self callcrossimage3];
         imgview4.image=[UIImage imageNamed:@"Cross10.png"];
        quote.frame=CGRectMake(0, 270, 480, 50);
      [quote setTitle:@"And under struggling, which leaves us with the last rating ..." forState:UIControlStateNormal];
    }

}
-(void)campare5
{
    
    if(finalscore<12&&count==5)
    {
        imgview.frame=CGRectMake(100,215,180,35);
        quote.frame=CGRectMake(0, 270, 480, 50);
        [quote setTitle:@"Seek help. You have being very honest, thank you for that ..." forState:UIControlStateNormal];

   
        [self callcircleimage];
        count=5;

    } 

}
-(void)callcrossimage
{
   
    imgview1.animationImages =[NSArray arrayWithObjects:
                            [UIImage imageNamed:@"cross-a.png"],
                            [UIImage imageNamed:@"cross-a.png"],
                            [UIImage imageNamed:@"cross-a.png"],
                            [UIImage imageNamed:@"cross-a.png"],
                            [UIImage imageNamed:@"cross-a.png"],
                            [UIImage imageNamed:@"cross-a.png"],
                            [UIImage imageNamed:@"cross-a.png"],
                            [UIImage imageNamed:@"cross-a.png"],
                            [UIImage imageNamed:@"cross-a.png"],
                            [UIImage imageNamed:@"cross-a.png"],
                            [UIImage imageNamed:@"cross-a.png"],
                            [UIImage imageNamed:@"cross-a.png"],
                            [UIImage imageNamed:@"cross-a.png"],
                            [UIImage imageNamed:@"cross-a.png"],
                            [UIImage imageNamed:@"cross-a.png"],
                            [UIImage imageNamed:@"cross-a.png"],
                            [UIImage imageNamed:@"cross-a.png"],
                            [UIImage imageNamed:@"cross-a.png"],
                            [UIImage imageNamed:@"Cross1.png"],
                            [UIImage imageNamed:@"Cross2.png"],
                            [UIImage imageNamed:@"Cross3.png"],
                            [UIImage imageNamed:@"Cross4.png"],
                            [UIImage imageNamed:@"Cross5.png"],
                            [UIImage imageNamed:@"Cross6.png"],
                            [UIImage imageNamed:@"Cross7.png"],
                            [UIImage imageNamed:@"Cross8.png"],
                            [UIImage imageNamed:@"Cross9.png"],
                            [UIImage imageNamed:@"Cross10.png"],
                                                           nil];
    [imgview1 setAnimationRepeatCount:1];
    imgview1.animationDuration= 1.50;
    
    imgview1.contentMode =UIViewAutoresizingFlexibleWidth;
    [imgview1 startAnimating];
    [self.view addSubview:imgview1];
    [self.view bringSubviewToFront:imgview1];
    imgview1.hidden=NO;    
}

-(void)callcrossimage1
{
    NSUserDefaults *valu = [NSUserDefaults standardUserDefaults];
    [valu setInteger:0 forKey:@"skip"];
    imgview2.animationImages =[NSArray arrayWithObjects:
                               [UIImage imageNamed:@"cross-a.png"],
                               [UIImage imageNamed:@"cross-a.png"],
                               [UIImage imageNamed:@"cross-a.png"],
                               [UIImage imageNamed:@"cross-a.png"],
                               [UIImage imageNamed:@"cross-a.png"],
                               [UIImage imageNamed:@"cross-a.png"],
                               [UIImage imageNamed:@"cross-a.png"],
                               [UIImage imageNamed:@"cross-a.png"],
                               [UIImage imageNamed:@"cross-a.png"],
                               [UIImage imageNamed:@"cross-a.png"],
                               [UIImage imageNamed:@"cross-a.png"],
                               [UIImage imageNamed:@"cross-a.png"],
                               [UIImage imageNamed:@"cross-a.png"],
                               [UIImage imageNamed:@"cross-a.png"],
                               [UIImage imageNamed:@"cross-a.png"],
                               [UIImage imageNamed:@"cross-a.png"],
                               [UIImage imageNamed:@"cross-a.png"],
                               [UIImage imageNamed:@"cross-a.png"],
                               [UIImage imageNamed:@"Cross1.png"],
                               [UIImage imageNamed:@"Cross2.png"],
                               [UIImage imageNamed:@"Cross3.png"],
                               [UIImage imageNamed:@"Cross4.png"],
                               [UIImage imageNamed:@"Cross5.png"],
                               [UIImage imageNamed:@"Cross6.png"],
                               [UIImage imageNamed:@"Cross7.png"],
                               [UIImage imageNamed:@"Cross8.png"],
                               [UIImage imageNamed:@"Cross9.png"],
                               [UIImage imageNamed:@"Cross10.png"],
                               nil];
    [imgview2 setAnimationRepeatCount:1];
        
    imgview2.animationDuration= 1.50;
    
    imgview2.contentMode =UIViewAutoresizingFlexibleWidth;
    [imgview2 startAnimating];
    [self.view addSubview:imgview2];
    [self.view bringSubviewToFront:imgview2];
    imgview2.hidden=NO;
    
}
-(void)callcrossimage2
{
  
    imgview3.animationImages =[NSArray arrayWithObjects:
                               [UIImage imageNamed:@"cross-a.png"],
                               [UIImage imageNamed:@"cross-a.png"],
                               [UIImage imageNamed:@"cross-a.png"],
                               [UIImage imageNamed:@"cross-a.png"],
                               [UIImage imageNamed:@"cross-a.png"],
                               [UIImage imageNamed:@"cross-a.png"],
                               [UIImage imageNamed:@"cross-a.png"],
                               [UIImage imageNamed:@"cross-a.png"],
                               [UIImage imageNamed:@"cross-a.png"],
                               [UIImage imageNamed:@"cross-a.png"],
                               [UIImage imageNamed:@"cross-a.png"],
                               [UIImage imageNamed:@"cross-a.png"],
                               [UIImage imageNamed:@"cross-a.png"],
                               [UIImage imageNamed:@"cross-a.png"],
                               [UIImage imageNamed:@"cross-a.png"],
                               [UIImage imageNamed:@"cross-a.png"],
                               [UIImage imageNamed:@"cross-a.png"],
                               [UIImage imageNamed:@"cross-a.png"],
                               [UIImage imageNamed:@"Cross1.png"],
                               [UIImage imageNamed:@"Cross2.png"],
                               [UIImage imageNamed:@"Cross3.png"],
                               [UIImage imageNamed:@"Cross4.png"],
                               [UIImage imageNamed:@"Cross5.png"],
                               [UIImage imageNamed:@"Cross6.png"],
                               [UIImage imageNamed:@"Cross7.png"],
                               [UIImage imageNamed:@"Cross8.png"],
                               [UIImage imageNamed:@"Cross9.png"],
                               [UIImage imageNamed:@"Cross10.png"],
                               nil];
    [imgview3 setAnimationRepeatCount:1];
       
    
    imgview3.animationDuration= 1.50;
    
    imgview3.contentMode =UIViewAutoresizingFlexibleWidth;
    [imgview3 startAnimating];
    [self.view addSubview:imgview3];
    [self.view bringSubviewToFront:imgview3];
    imgview3.hidden=NO;
}


    

-(void)callcrossimage3
{
   
    imgview4.animationImages =[NSArray arrayWithObjects:
                               [UIImage imageNamed:@"cross-a.png"],
                               [UIImage imageNamed:@"cross-a.png"],
                               [UIImage imageNamed:@"cross-a.png"],
                               [UIImage imageNamed:@"cross-a.png"],
                               [UIImage imageNamed:@"cross-a.png"],
                               [UIImage imageNamed:@"cross-a.png"],
                               [UIImage imageNamed:@"cross-a.png"],
                               [UIImage imageNamed:@"cross-a.png"],
                               [UIImage imageNamed:@"cross-a.png"],
                               [UIImage imageNamed:@"cross-a.png"],
                               [UIImage imageNamed:@"cross-a.png"],
                               [UIImage imageNamed:@"cross-a.png"],
                               [UIImage imageNamed:@"cross-a.png"],
                               [UIImage imageNamed:@"cross-a.png"],
                               [UIImage imageNamed:@"cross-a.png"],
                               [UIImage imageNamed:@"cross-a.png"],
                               [UIImage imageNamed:@"cross-a.png"],
                               [UIImage imageNamed:@"cross-a.png"],
                               [UIImage imageNamed:@"Cross1.png"],
                               [UIImage imageNamed:@"Cross2.png"],
                               [UIImage imageNamed:@"Cross3.png"],
                               [UIImage imageNamed:@"Cross4.png"],
                               [UIImage imageNamed:@"Cross5.png"],
                               [UIImage imageNamed:@"Cross6.png"],
                               [UIImage imageNamed:@"Cross7.png"],
                               [UIImage imageNamed:@"Cross8.png"],
                               [UIImage imageNamed:@"Cross9.png"],
                               [UIImage imageNamed:@"Cross10.png"],
                               nil];
    [imgview4 setAnimationRepeatCount:1];
    imgview4.animationDuration= 1.50;
    
    imgview4.contentMode =UIViewAutoresizingFlexibleWidth;
    [imgview4 startAnimating];
    [self.view addSubview:imgview4];
    [self.view bringSubviewToFront:imgview4];
    imgview4.hidden=NO;    
}


-(void)callcircleimage
{
  
       imgview.animationImages =[NSArray arrayWithObjects:
                          [UIImage imageNamed:@"cross-a.png"],
                          [UIImage imageNamed:@"cross-a.png"],
                          [UIImage imageNamed:@"cross-a.png"],
                          [UIImage imageNamed:@"cross-a.png"],
                          [UIImage imageNamed:@"cross-a.png"],
                          [UIImage imageNamed:@"cross-a.png"],
                          [UIImage imageNamed:@"cross-a.png"],
                          [UIImage imageNamed:@"cross-a.png"],
                          [UIImage imageNamed:@"cross-a.png"],
                          [UIImage imageNamed:@"cross-a.png"],
                          [UIImage imageNamed:@"cross-a.png"],
                          [UIImage imageNamed:@"cross-a.png"],
                          [UIImage imageNamed:@"cross-a.png"],
                          [UIImage imageNamed:@"cross-a.png"],
                          [UIImage imageNamed:@"cross-a.png"],
                          [UIImage imageNamed:@"cross-a.png"],
                          [UIImage imageNamed:@"cross-a.png"],
                          [UIImage imageNamed:@"cross-a.png"],  
                          [UIImage imageNamed:@"1.png"],
                          [UIImage imageNamed:@"2.png"],
                          [UIImage imageNamed:@"3.png"],
                          [UIImage imageNamed:@"4.png"],
                          [UIImage imageNamed:@"5.png"],
                          [UIImage imageNamed:@"6.png"],
                          [UIImage imageNamed:@"7.png"],
                          [UIImage imageNamed:@"8.png"],
                          [UIImage imageNamed:@"9.png"],
                          [UIImage imageNamed:@"10.png"],
                          [UIImage imageNamed:@"11.png"],
                          [UIImage imageNamed:@"12.png"],
                          [UIImage imageNamed:@"13.png"],
                          [UIImage imageNamed:@"14.png"],
                          [UIImage imageNamed:@"15.png"],
                          [UIImage imageNamed:@"16.png"],
                          nil];
    [imgview setAnimationRepeatCount:1];
        
    
    imgview.animationDuration= 1.50;
    imgview.contentMode =UIViewAutoresizingFlexibleWidth;
    [imgview startAnimating];
    
    [self.view addSubview: imgview];
    [self.view bringSubviewToFront:imgview];
    
    imgview.hidden=NO;
    
}

       
   


- (void)viewDidUnload
{
    [super viewDidUnload];
    imgview.hidden=YES;
    imgview1.hidden=YES;
    imgview2.hidden=YES;
    imgview3.hidden=YES;
    imgview4.hidden=YES;
}
-(void)viewWillAppear:(BOOL)animated
{
   

}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
   return (interfaceOrientation == UIInterfaceOrientationLandscapeLeft||interfaceOrientation == UIInterfaceOrientationLandscapeRight);
}

@end
