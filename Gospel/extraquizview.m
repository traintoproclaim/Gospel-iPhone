//
//  extraquizview.m
//  Gospel
//
//  Created by Vibha on 1/23/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "extraquizview.h"
#import "QuizView.h"
#import "Quizintro.h"
#import "GospelViewController.h"
@implementation extraquizview
@synthesize back,lable1,lable2,lable3,lable5,lable6,lable7,lable8,lable9,lable10;

int gos1=1;
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
    lable2.font= [UIFont fontWithName:@"Opificio" size:15.f];
    lable3.font= [UIFont fontWithName:@"Opificio" size:20.f];
 
    lable5.font= [UIFont fontWithName:@"Opificio" size:20.f];
    lable6.font= [UIFont fontWithName:@"Opificio" size:15.f];
    lable7.font= [UIFont fontWithName:@"Opificio" size:15.f];
    lable8.font= [UIFont fontWithName:@"Opificio" size:15.f];
    lable9.font= [UIFont fontWithName:@"Opificio" size:15.f];
    lable10.font= [UIFont fontWithName:@"Opificio" size:15.f];
    
    
    lable1.frame=CGRectMake(90, 0, 300, 30);
    lable1.textAlignment=UITextAlignmentCenter;
    
    lable2.frame=CGRectMake(30, 5,440, 100);
    lable2.textAlignment=UITextAlignmentCenter;
    
    lable3.frame=CGRectMake(85, 85, 300, 18);
    lable3.textAlignment=UITextAlignmentCenter;
    
  
    lable8.frame=CGRectMake(0, 125, 480, 50);
    lable8.textAlignment=UITextAlignmentCenter;
    lable9.frame=CGRectMake(0, 144, 480, 50);
    lable9.textAlignment=UITextAlignmentCenter;
    lable10.frame=CGRectMake(0, 98, 480, 50);
    lable10.textAlignment=UITextAlignmentCenter;
    
    lable5.frame=CGRectMake(85, 162, 300, 80);
    lable5.textAlignment=UITextAlignmentCenter;
    
    lable6.frame=CGRectMake(10, 182, 440, 100);
    lable6.textAlignment=UITextAlignmentCenter;
    lable7.frame=CGRectMake(0, 230, 480, 100);
    lable7.textAlignment=UITextAlignmentCenter;
    lable2.numberOfLines=2;
    
    lable3.numberOfLines=3;
    lable10.numberOfLines=2;
    lable8.numberOfLines=1;
    lable9.numberOfLines=1;
    lable5.numberOfLines=2;
    lable6.numberOfLines=2;
    lable7.numberOfLines=4;
    

}
-(IBAction)gobackview:(id)sender
{
    
    QuizView *backview=[[QuizView alloc]initWithNibName:@"QuizView" bundle:nil];
    self.navigationController.viewControllers=[NSArray arrayWithObjects:backview, nil];
    
    [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:0] animated:YES];
    
}


- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self performSelector:@selector(longTap) withObject:nil afterDelay:2.0];
}
-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
      [NSObject cancelPreviousPerformRequestsWithTarget:self];
    switch (gos1)
    {
            
        case 1:gos1=2;
            Quizintro *tab1=[[Quizintro alloc]initWithNibName:@"Quizintro" bundle:[NSBundle mainBundle]];	
            
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
-(void)viewWillAppear:(BOOL)animated
{
    gos1=1;
    lable1.hidden=NO;
    lable2.hidden=NO;
    lable3.hidden=NO;
    lable10.hidden=NO;
    lable5.hidden=NO;
    lable6.hidden=NO;
    lable7.hidden=NO;
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
