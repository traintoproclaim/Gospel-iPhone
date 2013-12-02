//
//  ministyView.m
//  Gospel
//
//  Created by Vibha on 1/1/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "ministyView.h"
#import "GospelViewController.h"
#import "registerView.h"
#import "Reachability.h"

@implementation ministyView
@synthesize back,lable1,lable2,lable3,lable4,lable5,lable6,lable7;

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
    lable1.font= [UIFont fontWithName:@"Opificio" size:22.f];
    lable2.font= [UIFont fontWithName:@"Opificio" size:18.f];
    lable3.font= [UIFont fontWithName:@"Opificio" size:18.f];
    lable4.font= [UIFont fontWithName:@"Opificio" size:18.f];
    lable5.titleLabel.font= [UIFont fontWithName:@"Opificio" size:18.f];
    lable6.font= [UIFont fontWithName:@"Opificio" size:18.f];
    lable7.titleLabel.font= [UIFont fontWithName:@"Opificio" size:18.f];

    
    lable1.frame=CGRectMake(110, 10, 280, 30);
    lable2.frame=CGRectMake(0, 10, 470, 180);
    lable3.frame=CGRectMake(5, 50, 470, 200);
    lable4.frame=CGRectMake(0, 105, 470, 180);
    lable5.frame=CGRectMake(130, 225, 240, 30);
    lable6.frame=CGRectMake(0, 190, 270, 180);
    lable7.frame=CGRectMake(215, 261, 240, 40);
    
    lable1.numberOfLines=2;
    lable2.numberOfLines=3;
    lable3.numberOfLines=3;
    lable4.numberOfLines=4;
}
-(IBAction)link:(id)sender
{
    Reachability *reach = [Reachability reachabilityForInternetConnection];	
    NetworkStatus netStatus = [reach currentReachabilityStatus];    
    if (netStatus == NotReachable) 
    {        
        NSLog(@"No internet connection!");   
        UIAlertView *alert11=[[UIAlertView alloc] initWithTitle:@"Message" message:@"No Internet connection !!" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
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
-(IBAction)Mailsend:(id)sender
{
    Reachability *reach = [Reachability reachabilityForInternetConnection];	
    NetworkStatus netStatus = [reach currentReachabilityStatus];    
    if (netStatus == NotReachable) 
    {        
        NSLog(@"No internet connection!");   
        UIAlertView *alert11=[[UIAlertView alloc] initWithTitle:@"Message" message:@"No Internet connection !!" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alert11 show];
        [alert11 release];
        
    } 
    else 
    { 

    MFMailComposeViewController*obj_email=[[MFMailComposeViewController alloc]init];
    obj_email.mailComposeDelegate=self;
    [obj_email setToRecipients:[NSArray arrayWithObjects:@"stu@traintoproclaim.com", nil]];
    // AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    
    // if (appDelegate.WithCatalog==TRUE) {
    //     imageData = [[NSUserDefaults standardUserDefaults] objectForKey:@"WithCatalog"];
    // }
    // else
    // {
    //  imageData = [[NSUserDefaults standardUserDefaults] objectForKey:@"key"];
    // }
    
    // [obj_email addAttachmentData:imageData mimeType:@"image/JPEG" fileName:@"Images"]; 
    
    [obj_email setModalTransitionStyle:UIModalTransitionStyleCrossDissolve];
    
    [self presentModalViewController:obj_email animated:YES];
    }
}
- (void)mailComposeController:(MFMailComposeViewController*)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError*)error 
{
    
    NSString *message;
    switch (result)
    {
        case MFMailComposeResultCancelled:
            break;
        case MFMailComposeResultSaved:
            
            break;
        case MFMailComposeResultSent:
            message = @"Message Sent successfully.";
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Thank You!" message:message delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
            [alert show];
            [alert release];
            
            
            break;
        case MFMailComposeResultFailed:
            
            break;
        default:
            
            break;
    }
    [self dismissModalViewControllerAnimated:YES];
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
