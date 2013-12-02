//
//  copyRightView.m
//  Gospel
//
//  Created by Vibha on 1/1/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "copyRightView.h"
#import "GospelViewController.h"
#import "Reachability.h"

@implementation copyRightView
@synthesize back,lable1,lable2,lable3,lable4,lable5;

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
    lable1.font= [UIFont fontWithName:@"Opificio" size:20.f];
    lable2.font= [UIFont fontWithName:@"Opificio" size:16.f];
    lable3.font= [UIFont fontWithName:@"Opificio" size:16.f];
    lable4.titleLabel.font= [UIFont fontWithName:@"Opificio" size:18.f];
    lable5.font= [UIFont fontWithName:@"Opificio" size:16.f];
    
    lable1.frame=CGRectMake(90, 10, 330, 46);
    lable1.textAlignment=UITextAlignmentCenter;
    lable2.frame=CGRectMake(60, 24,360, 200);
    lable5.frame=CGRectMake(125, 155, 200, 30);
    lable3.frame=CGRectMake(70, 100, 340, 230);
    lable4.frame=CGRectMake(105, 255, 260, 30);
    
    lable1.numberOfLines=2;
    lable2.numberOfLines=3;
    lable3.numberOfLines=3;
    
}

-(IBAction)Mailsend:(id)sender
{Reachability *reach = [Reachability reachabilityForInternetConnection];	
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
