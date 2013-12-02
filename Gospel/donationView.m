//
//  donationView.m
//  Gospel
//
//  Created by Vibha on 1/3/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "donationView.h"
#import "Reachability.h"
#import "GospelViewController.h"
#import "registerView.h"
#import "MailView_1.h"
#import "congoview.h"


@implementation donationView
@synthesize back,data1,data,data2,data3,data5,end,lable1;

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
     data.font= [UIFont fontWithName:@"Opificio" size:18.f];
    CGRect tv1=CGRectMake(60, -30,380,250);
    data.textAlignment=UITextAlignmentCenter;
    data.frame=tv1;
    data.numberOfLines=3;
    data1.frame=CGRectMake(80, 150, 50, 30);
    data2.frame=CGRectMake(338, 150, 90,30);
    data3.frame=CGRectMake(60, 140, 380, 120);
    data3.numberOfLines=2;
    data3.textAlignment=UITextAlignmentCenter;

    data5.frame=CGRectMake(90, 150, 280, 30);
    data.font= [UIFont fontWithName:@"Opificio" size:18.f];
    data1.font= [UIFont fontWithName:@"Opificio" size:18.f];
    data5.titleLabel.font= [UIFont fontWithName:@"Opificio" size:18.f];
    data3.font= [UIFont fontWithName:@"Opificio" size:18.f];
    data2.font= [UIFont fontWithName:@"Opificio" size:18.f];
    
    end.frame=CGRectMake(380, 250, 60, 27);
    
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
-(IBAction)gobackview:(id)sender
{
    congoview *Controller=[[congoview alloc]init];
    self.navigationController.viewControllers=[NSArray arrayWithObjects:Controller, nil];
    
    [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:0] animated:YES];
    [self.navigationController popViewControllerAnimated:YES];

}
-(IBAction)endaction:(id)sender
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
