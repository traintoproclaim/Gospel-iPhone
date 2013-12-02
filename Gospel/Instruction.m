//
//  Instruction.m
//  Gospel
//
//  Created by Vibha on 11/1/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Instruction.h"
#import "QuizView.h"
#import "GospelViewController.h"
#import "registerView.h"
#import "Reachability.h"

@implementation Instruction
@synthesize next,inst,data,back,data1,data2,data3,data4;

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
    CGRect lb1=CGRectMake(0, 5,480 , 47);
        CGRect bt1=CGRectMake(325, 260, 116, 38);
    inst.frame=lb1;
    inst.textAlignment=UITextAlignmentCenter;
    inst.font= [UIFont fontWithName:@"Opificio" size:22.f];
    data.frame=CGRectMake(0, -30,480, 310);
    data.textAlignment=UITextAlignmentCenter;
    data.numberOfLines=8;
    data1.frame=CGRectMake(90, 200, 50, 30);
    data2.frame=CGRectMake(130, 200, 210, 30);
    data3.frame=CGRectMake(340, 200, 90, 30);
    data.font= [UIFont fontWithName:@"Opificio" size:16.f];
    data1.font= [UIFont fontWithName:@"Opificio" size:16.f];
    data2.titleLabel.font= [UIFont fontWithName:@"Opificio" size:16.f];
    data3.font= [UIFont fontWithName:@"Opificio" size:16.f];
    data4.font= [UIFont fontWithName:@"Opificio" size:16.f];
    data4.frame=CGRectMake(100, 220, 400, 30);
    next.frame=bt1;
}
-(IBAction)link:(id)sender
{
    Reachability *reach = [Reachability reachabilityForInternetConnection];	
    NetworkStatus netStatus = [reach currentReachabilityStatus];    
    if (netStatus == NotReachable) 
    {        
        NSLog(@"No internet connection!");   
        UIAlertView *alert11=[[UIAlertView alloc] initWithTitle:@"Message" message:@"No Internet connection!" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alert11 show];
        [alert11 release];
        
    } 
    else 
    { 

    NSUserDefaults *perf=[NSUserDefaults standardUserDefaults];
    [perf setObject:@"1" forKey:@"link"];
    registerView *tab1=[[registerView alloc]initWithNibName:@"registerView" bundle:[NSBundle mainBundle]];	
    
    [self.navigationController pushViewController:tab1 animated:NO];
    [tab1 release];  
    }
}
-(IBAction)QuizView:(id)sender
{
  QuizView *tab1=[[QuizView alloc]initWithNibName:@"QuizView" bundle:[NSBundle mainBundle]];	
    
    [self.navigationController pushViewController:tab1 animated:NO];
    [tab1 release]; 
    


}
-(IBAction)gobackview:(id)sender
{
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
