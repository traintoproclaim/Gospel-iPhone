//
//  photosview.m
//  Gospel
//
//  Created by Vibha on 12/27/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "photosview.h"
#import "StartScreen14.h"
#import "MBProgressHUD.h"



@implementation photosview
@synthesize imageView,crop,imageView1,obj;

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
    imageView=[[UIImageView alloc]init];
    imageView.frame=CGRectMake(0,0,480,320);
    imageView.backgroundColor=[UIColor clearColor];
    [self.view addSubview:imageView];
    
    imageView1=[[UIImageView alloc]init];
    imageView1.frame=CGRectMake(0,0,120, 120);
    imageView1.backgroundColor=[UIColor clearColor];
    [self.view addSubview:imageView1];
    
    crop=[[UIButton alloc]init];
    crop.frame=CGRectMake(20, 260, 70, 30);
    [crop setTitle:@"crop" forState:UIControlStateNormal];
    [crop addTarget:self action:@selector(cropimages) forControlEvents:UIControlEventTouchUpInside];

    
    UIImagePickerController * picker = [[UIImagePickerController alloc] init];
	picker.delegate = self;
	picker.allowsEditing = YES;
    picker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
	
	[self presentModalViewController:picker animated:YES];
}

-(void)loading
{
    HUD = [MBProgressHUD showHUDAddedTo:self.navigationController.view animated:YES];
    HUD = [[MBProgressHUD alloc] initWithView:self.view];
    HUD.labelText = @"Loading Page..";
    
    [self.view addSubview:HUD];
    timer = [NSTimer scheduledTimerWithTimeInterval:0.3 target:self 
                                           selector:@selector(dismissHUD:) userInfo:nil 
                                            repeats:NO];
    
}
- (void)dismissHUD:(id)arg {
    
    [MBProgressHUD hideHUDForView:self.navigationController.view animated:YES];
    HUD = nil;
    [timer invalidate];
    
}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info 
{
    
    UIImage *imageEdited = [info objectForKey:UIImagePickerControllerEditedImage];
    
    
    CGRect cropRect;
    cropRect = [[info valueForKey:@"UIImagePickerControllerCropRect"] CGRectValue];
    
    
    NSLog(@"imageEdited width = %f height = %f",imageEdited.size.width, imageEdited.size.height);
   
    
    NSLog(@"corpRect %@", NSStringFromCGRect(cropRect));
      
    CGImageRef imagePickedRef = imageEdited.CGImage;
    
    self.imageView1.contentMode = UIViewContentModeScaleAspectFit;
    UIImage *img = [UIImage imageWithCGImage:imagePickedRef]; 
    CGImageRelease(imagePickedRef);
    
    self.imageView1.image = img;
    NSData *imageData=UIImageJPEGRepresentation(img, 0.9);
    [[NSUserDefaults standardUserDefaults] setObject:imageData forKey:@"image"];
    
    imageView1.hidden=YES;
    imageView.hidden=YES;
    
    UIAlertView *alert1=[[UIAlertView alloc] initWithTitle:@"Message!" message:@"Image set successfully " delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    
    
    [alert1 show];
    [alert1 release];
    
    [self.navigationController popViewControllerAnimated:NO];
    [picker dismissModalViewControllerAnimated:YES];
    

}

- (void) imagePickerControllerDidCancel: (UIImagePickerController *) picker {
    
       
       [self dismissModalViewControllerAnimated: YES];
     [self.navigationController popToRootViewControllerAnimated:NO];
}
-(void)cropimages
{
  
 
    CGRect rect = CGRectMake(0, 0, 480, 320);
    CGImageRef imageRef = CGImageCreateWithImageInRect([imageView.image CGImage], rect);
    UIImage *img = [UIImage imageWithCGImage:imageRef]; 
    CGImageRelease(imageRef);
    imageView1.image=img;
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
