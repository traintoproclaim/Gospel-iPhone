//
//  GospelViewController.m
//  Gospel
//
//  Created by Vibha on 11/1/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "GospelViewController.h"
#import "Instruction.h"
#import "photosview.h"
#import "ministyView.h"
#import "copyRightView.h"
#import "creditsView.h"
#import "changeloginView.h"
#import "videoView.h"


@implementation GospelViewController
@synthesize interactive,Video,logo,menu,customView;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor=[UIColor colorWithPatternImage:[UIImage imageNamed:@"flash_Screebg.png"]];
      
    NSUserDefaults *version = [NSUserDefaults standardUserDefaults];
    [version setInteger:0 forKey:@"version"];
       [self.view addSubview:logo];
    CGRect bt1=CGRectMake(110, 235,116 , 38);
    CGRect bt2=CGRectMake(270, 235,116 , 38);
    interactive=[UIButton buttonWithType:UIButtonTypeCustom];
    interactive.frame=bt2;
    [interactive setImage:[UIImage imageNamed:@"Interactive.png"] forState:UIControlStateNormal];
    [interactive setImage:[UIImage imageNamed:@"Interactive.png"] forState:UIControlStateHighlighted];
    [interactive setImage:[UIImage imageNamed:@"Interactive.png"] forState:UIControlStateSelected];
    [interactive addTarget:self action:@selector(presentation:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:interactive];

   
    Video=[UIButton buttonWithType:UIButtonTypeCustom];
    Video.frame=bt1;
    [Video setImage:[UIImage imageNamed:@"video.png"] forState:UIControlStateNormal];
    [Video setImage:[UIImage imageNamed:@"video.png"] forState:UIControlStateHighlighted];
    [Video setImage:[UIImage imageNamed:@"video.png"] forState:UIControlStateSelected];
    [Video addTarget:self action:@selector(video:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:Video];
   
    
    UIImage *img1=[UIImage imageNamed:@"menu@1x.png"];
    menu=[UIButton buttonWithType:UIButtonTypeCustom];
    menu.frame=CGRectMake(20, 20, 70,35);
    [menu setImage:img1 forState:UIControlStateNormal];
    [menu setImage:[UIImage imageNamed:@"menu@1x.png"] forState:UIControlStateNormal];
    [menu setImage:[UIImage imageNamed:@"menu@1x.png"] forState:UIControlStateHighlighted];
    [menu setImage:[UIImage imageNamed:@"menu@1x.png"] forState:UIControlStateSelected];
    [menu addTarget:self action:@selector(menuAction:) forControlEvents:UIControlEventTouchUpInside];
    [menu setBackgroundColor:[UIColor clearColor]];
    [self.view addSubview:menu];
    [self.view bringSubviewToFront:menu];

    

}
-(IBAction)video:(id)sender
{
    videoView *tab1=[[videoView alloc]initWithNibName:@"videoView" bundle:[NSBundle mainBundle]];	
    [self.navigationController pushViewController:tab1 animated:NO];
    [tab1 release];

    
}
- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}
-(IBAction)presentation:(id)sender
{
   Instruction *tab1=[[Instruction alloc]initWithNibName:@"Instruction" bundle:[NSBundle mainBundle]];	
    [self.navigationController pushViewController:tab1 animated:NO];
    [tab1 release];
    
  
}
-(IBAction)menuAction:(id)sender
{
    customView.hidden=YES;
    customView=[UIView new];
    
    customView.frame=CGRectMake(40, 30, 180, 265);
    customView.backgroundColor=[UIColor grayColor];
    
    customView.layer.cornerRadius=5.3;
    customView.layer.masksToBounds=YES;
    customView.layer.borderColor=[UIColor blackColor].CGColor;
    customView.layer.borderWidth=2;
    customView.transform = CGAffineTransformScale(CGAffineTransformIdentity, 0.001, 0.001);
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.3/1.5];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationDidStopSelector:@selector(bounce1AnimationStopped)];
    
    customView.transform = CGAffineTransformScale(CGAffineTransformIdentity, 1.1, 1.1);
    
    [UIView commitAnimations];
    
    UILabel *lbb=[[UILabel alloc]init];
    lbb.frame=CGRectMake(10, 1, 150, 25);
    lbb.text=@"Options";
    lbb.textColor=[UIColor whiteColor];
    lbb.font=[UIFont systemFontOfSize:14.f];
    lbb.backgroundColor=[UIColor clearColor];
    [customView addSubview:lbb];
    
    UIButton *btn1=[UIButton buttonWithType:UIButtonTypeCustom];
    btn1.frame=CGRectMake(-50, 30, 170, 21);
    [btn1 setImage:[UIImage imageNamed:@"uncheck.png"] forState:UIControlStateNormal];
    [btn1 setImage:[UIImage imageNamed:@"check.png"] forState:UIControlStateHighlighted];
    [btn1 setImage:[UIImage imageNamed:@"check.png"] forState:UIControlStateSelected];
    [btn1 addTarget:self action:@selector(longversion) forControlEvents:UIControlEventTouchUpInside];
    [customView addSubview:btn1];
    
    UILabel *lbb1=[[UILabel alloc]init];
    lbb1.frame=CGRectMake(50, 25, 100, 30);
    lbb1.text=@"Long Version";
    lbb1.textColor=[UIColor whiteColor];
    lbb1.backgroundColor=[UIColor clearColor];
    lbb1.font=[UIFont systemFontOfSize:12.f];
    [customView addSubview:lbb1];
    
    UIButton *btn2=[UIButton buttonWithType:UIButtonTypeCustom];
    btn2.frame=CGRectMake(-50, 60, 170, 21);
    [btn2 setImage:[UIImage imageNamed:@"uncheck.png"] forState:UIControlStateNormal];
    [btn2 setImage:[UIImage imageNamed:@"check.png"] forState:UIControlStateHighlighted];
    [btn2 setImage:[UIImage imageNamed:@"check.png"] forState:UIControlStateSelected];
    [btn2 addTarget:self action:@selector(shortversion) forControlEvents:UIControlEventTouchUpInside];
    [customView addSubview:btn2];
    
    UILabel *lbb2=[[UILabel alloc]init];
    lbb2.frame=CGRectMake(50, 55, 100, 30);
    lbb2.text=@"Short Version";
    lbb2.textColor=[UIColor whiteColor];
    lbb2.backgroundColor=[UIColor clearColor];
    lbb2.font=[UIFont systemFontOfSize:12.f];
    [customView addSubview:lbb2];
    
    
    
    UIButton *btn3=[UIButton buttonWithType:UIButtonTypeCustom];
    btn3.frame=CGRectMake(-50, 90, 170, 21);
    [btn3 setImage:[UIImage imageNamed:@"uncheck.png"] forState:UIControlStateNormal];
    [btn3 setImage:[UIImage imageNamed:@"check.png"] forState:UIControlStateHighlighted];
    [btn3 setImage:[UIImage imageNamed:@"check.png"] forState:UIControlStateSelected];
   [btn3 addTarget:self action:@selector(personalisephoto) forControlEvents:UIControlEventTouchUpInside];
    [customView addSubview:btn3];
    
    UILabel *lbb3=[[UILabel alloc]init];
    lbb3.frame=CGRectMake(50, 85, 100, 30);
    lbb3.text=@"Personalise Photo";
    lbb3.textColor=[UIColor whiteColor];
    lbb3.backgroundColor=[UIColor clearColor];
    lbb3.font=[UIFont systemFontOfSize:12.f];
    [customView addSubview:lbb3];
    
    
    
    UIButton *btn4=[UIButton buttonWithType:UIButtonTypeCustom];
    btn4.frame=CGRectMake(-50, 120, 170, 21);
    [btn4 setImage:[UIImage imageNamed:@"uncheck.png"] forState:UIControlStateNormal];
    [btn4 setImage:[UIImage imageNamed:@"check.png"] forState:UIControlStateHighlighted];
    [btn4 setImage:[UIImage imageNamed:@"check.png"] forState:UIControlStateSelected];
    [btn4 addTarget:self action:@selector(aboutmistry) forControlEvents:UIControlEventTouchUpInside];
    [customView addSubview:btn4];
    
    UILabel *lbb4=[[UILabel alloc]init];
    lbb4.frame=CGRectMake(50, 115, 100, 30);
    lbb4.text=@"About the ministry";
    lbb4.textColor=[UIColor whiteColor];
    lbb4.backgroundColor=[UIColor clearColor];
    lbb4.font=[UIFont systemFontOfSize:12.f];
    [customView addSubview:lbb4];
    
    UIButton *btn5=[UIButton buttonWithType:UIButtonTypeCustom];
    btn5.frame=CGRectMake(-50, 150, 170, 21);
    [btn5 setImage:[UIImage imageNamed:@"uncheck.png"] forState:UIControlStateNormal];
    [btn5 setImage:[UIImage imageNamed:@"check.png"] forState:UIControlStateHighlighted];
    [btn5 setImage:[UIImage imageNamed:@"check.png"] forState:UIControlStateSelected];
   [btn5 addTarget:self action:@selector(copyright) forControlEvents:UIControlEventTouchUpInside];
    [customView addSubview:btn5];
    
    UILabel *lbb5=[[UILabel alloc]init];
    lbb5.frame=CGRectMake(50, 145, 100, 30);
    lbb5.text=@"Copyright";
    lbb5.textColor=[UIColor whiteColor];
    lbb5.backgroundColor=[UIColor clearColor];
    lbb5.font=[UIFont systemFontOfSize:12.f];
    [customView addSubview:lbb5];
    
    UIButton *btn6=[UIButton buttonWithType:UIButtonTypeCustom];
    btn6.frame=CGRectMake(-50, 180, 170, 21);
    [btn6 setImage:[UIImage imageNamed:@"uncheck.png"] forState:UIControlStateNormal];
    [btn6 setImage:[UIImage imageNamed:@"check.png"] forState:UIControlStateHighlighted];
    [btn6 setImage:[UIImage imageNamed:@"check.png"] forState:UIControlStateSelected];
   [btn6 addTarget:self action:@selector(credits) forControlEvents:UIControlEventTouchUpInside];
    [customView addSubview:btn6];
    
    UILabel *lbb6=[[UILabel alloc]init];
    lbb6.frame=CGRectMake(50, 175, 100, 30);
    lbb6.text=@"Credits";
    lbb6.textColor=[UIColor whiteColor];
    lbb6.backgroundColor=[UIColor clearColor];
    lbb6.font=[UIFont systemFontOfSize:12.f];
    [customView addSubview:lbb6];
    
   
    UIButton *btn7=[UIButton buttonWithType:UIButtonTypeCustom];
    btn7.frame=CGRectMake(-50, 209, 170, 21);
    [btn7 setImage:[UIImage imageNamed:@"uncheck.png"] forState:UIControlStateNormal];
    [btn7 setImage:[UIImage imageNamed:@"check.png"] forState:UIControlStateHighlighted];
    [btn7 setImage:[UIImage imageNamed:@"check.png"] forState:UIControlStateSelected];
    [btn7 addTarget:self action:@selector(changelogin) forControlEvents:UIControlEventTouchUpInside];
    [customView addSubview:btn7];
    
    UILabel *lbb7=[[UILabel alloc]init];
    lbb7.frame=CGRectMake(50, 204, 150, 30);
    lbb7.text=@"Change login details";
    lbb7.textColor=[UIColor whiteColor];
    lbb7.backgroundColor=[UIColor clearColor];
    lbb7.font=[UIFont systemFontOfSize:12.f];
    [customView addSubview:lbb7];

    UIButton *btn8=[UIButton buttonWithType:UIButtonTypeCustom];
    btn8.frame=CGRectMake(-15, 233, 100, 30);
    [btn8 setImage:[UIImage imageNamed:@"uncheck.png"] forState:UIControlStateNormal];
    [btn8 setImage:[UIImage imageNamed:@"check.png"] forState:UIControlStateHighlighted];
    [btn8 setImage:[UIImage imageNamed:@"check.png"] forState:UIControlStateSelected];
    [btn8 addTarget:self action:@selector(closemenu) forControlEvents:UIControlEventTouchUpInside];
    [customView addSubview:btn8];

    UILabel *lbb8=[[UILabel alloc]init];
    lbb8.frame=CGRectMake(50, 230, 150, 30);
    lbb8.text=@"Close menu";
    lbb8.textColor=[UIColor whiteColor];
    lbb8.backgroundColor=[UIColor clearColor];
    lbb8.font=[UIFont systemFontOfSize:12.f];
    [customView addSubview:lbb8];


    
     [self.view addSubview:customView];

}
- (void)bounce1AnimationStopped {
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.3/2];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationDidStopSelector:@selector(bounce2AnimationStopped)];
    customView.transform = CGAffineTransformScale(CGAffineTransformIdentity, 0.9, 0.9);
    [UIView commitAnimations];
}

- (void)bounce2AnimationStopped {
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.3/2];
    customView.transform = CGAffineTransformIdentity;
    [UIView commitAnimations];
}
-(void)longversion
{
    NSUserDefaults *version = [NSUserDefaults standardUserDefaults];
    [version setInteger:1 forKey:@"version"]; 
    customView.hidden=YES;
}
-(void)shortversion
{
    NSUserDefaults *version = [NSUserDefaults standardUserDefaults];
    [version setInteger:0 forKey:@"version"];
    customView.hidden=YES;
}
-(void)personalisephoto
{
    photosview *tab1=[[photosview alloc]initWithNibName:@"photosview" bundle:[NSBundle mainBundle]];	
    [self.navigationController pushViewController:tab1 animated:NO];
    [tab1 release];
     customView.hidden=YES;
}
-(void)aboutmistry
{
    ministyView *tab1=[[ministyView alloc]initWithNibName:@"ministyView" bundle:[NSBundle mainBundle]];	
    [self.navigationController pushViewController:tab1 animated:NO];
    [tab1 release];
    customView.hidden=YES;

}
-(void)copyright
{
    copyRightView *tab1=[[copyRightView alloc]initWithNibName:@"copyRightView" bundle:[NSBundle mainBundle]];	
    [self.navigationController pushViewController:tab1 animated:NO];
    [tab1 release];
    customView.hidden=YES;
}
-(void)credits
{
    creditsView *tab1=[[creditsView alloc]initWithNibName:@"creditsView" bundle:[NSBundle mainBundle]];	
    [self.navigationController pushViewController:tab1 animated:NO];
    [tab1 release];
   
}
-(void)changelogin
{
    changeloginView *tab1=[[changeloginView alloc]initWithNibName:@"changeloginView" bundle:[NSBundle mainBundle]];	
    [self.navigationController pushViewController:tab1 animated:NO];
    [tab1 release];
    customView.hidden=YES;

}
-(void)closemenu
{
    customView.hidden=YES;

}
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
   
    NSUserDefaults *version = [NSUserDefaults standardUserDefaults];
    [version setInteger:0 forKey:@"version"];
    
    NSUserDefaults *name1 = [NSUserDefaults standardUserDefaults];
    [name1 setObject:@"..." forKey:@"text"];
    
    NSUserDefaults *name = [NSUserDefaults standardUserDefaults];
    [name setObject:@"" forKey:@"name1"];
    
    NSUserDefaults *nam = [NSUserDefaults standardUserDefaults];
    [nam setInteger:10 forKey:@"gender"];
    
    NSUserDefaults *value1 = [NSUserDefaults standardUserDefaults];
    [value1 setInteger:0 forKey:@"val"];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
     return (interfaceOrientation == UIInterfaceOrientationLandscapeLeft||interfaceOrientation == UIInterfaceOrientationLandscapeRight);

}

@end
