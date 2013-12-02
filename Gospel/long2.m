//
//  long2.m
//  Gospel
//
//  Created by Vibha on 1/21/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "long2.h"
#import "extra8.h"
#import "longnext.h"
#import "GospelViewController.h"
#import "long3.h"

@implementation long2
@synthesize image1,image,image2,image3,image4,image5,image6,image7,image8,image9,image13,image14,image15,image16,image24,image26,image28,text;
@synthesize image10,image11,image12,image17,image18,image19,image20,pname,image21,image22,image23,image25;
@synthesize lable1,lable2,lable3,back,lable4,image27;
@synthesize myview;

int longval2=1;
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
    myview=[UIView new];
    myview.frame=CGRectMake(250, 12, 200, 200);
    myview.backgroundColor=[UIColor clearColor];
    [self.view addSubview:myview];
       
    self.view.backgroundColor=[UIColor colorWithPatternImage:[UIImage imageNamed:@"background.png"]];

    lable1.frame=CGRectMake(0, 270, 480, 50);
    lable1.titleLabel.font= [UIFont fontWithName:@"Opificio" size:17.f];
    lable1.titleLabel.numberOfLines=2;
    lable1.titleLabel.lineBreakMode=YES;
    [lable1 setTitle:@"      You would come before God at judgment and Jesus    would say" forState:UIControlStateNormal]; 
    lable1.backgroundColor=[UIColor blackColor];
    [lable1 addTarget:self action:@selector(labelTap) forControlEvents:UIControlEventTouchUpInside];
    lable1.titleLabel.textAlignment=UITextAlignmentCenter;
    [self.view addSubview:lable1];   

    [self callglobebodyani];
    
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
    switch (longval2)
    {
        case 1:lb15=CGRectMake(260,5,200,134);
            image12=[[UIImageView alloc]initWithFrame:lb15];
            [image12 setImage:[UIImage imageNamed:@"commentbox.png"]];
            [self.view addSubview:image12];
            lb14=CGRectMake(265,2,180,150);
            lable4=[[UILabel alloc]initWithFrame:lb14];
            lable4.text=@"I’m sorry, but I can’t let you into Heaven.";
            lable4.font= [UIFont fontWithName:@"Opificio" size:15.f];
            lable4.numberOfLines=4;
            lable4.textAlignment=UITextAlignmentCenter;
            lable4.backgroundColor=[UIColor clearColor];
            [self.view addSubview:lable4];
            lable1.frame=CGRectMake(0, 270, 480, 50);
            [lable1 setTitle:@"“I’m sorry, but I can’t let you into Heaven." forState:UIControlStateNormal];
            longval2=2;

            break;
        case 2:lable4.text=@"You don’t have a perfect record, I have to be just and send you to Hell.";
            lable1.frame=CGRectMake(0, 270, 480, 50);
[lable1 setTitle:@"    You don’t have a perfect record, I have to be just and                      send you to Hell." forState:UIControlStateNormal];
 
            longval2=3;

            break;
        case 3: lable1.frame=CGRectMake(0, 270, 480, 50);
            
            lable4.text=@"   I loved you so much I tried at least six ways to get through to you.";
            [lable1 setTitle:@"        I loved you so much I tried at least six ways to get        through to you." forState:UIControlStateNormal];  
            longval2=4;
            break;
            
       /*     
        case 4:image12.hidden=YES;
            lable4.hidden=YES;
            image19=[[UIImageView alloc]init];
            
            UIImage *img=[UIImage imageNamed:@"cross_brown-1.png"];
            image19.image=img;
            image19.frame=CGRectMake((myview.frame.size.width-img.size.width)/2, 15, img.size.width, img.size.height);
            NSLog(@"My Image Size %f,%f,%f,",(myview.frame.size.width-img.size.width)/2,img.size.width,img.size.height);
            [myview addSubview:image19];
           
            lable1.frame=CGRectMake(0, 270, 480, 50);
            [lable1 setTitle:@"Firstly, I died on the cross for you." forState:UIControlStateNormal];  

            longval2=5;
            
            break;
        case 5: image19.hidden=YES;
            lb21=CGRectMake(310,12,138,122);
           
            image20=[UIImageView new];
     
            NSData* myEncodedImageData = [ [NSUserDefaults standardUserDefaults] objectForKey:@"image"];
            NSLog(@"image data %@",myEncodedImageData);
            UIImage *img1;
            
            if(myEncodedImageData.length!=0)
            {
                flag=1;
                img1=[UIImage imageWithData:myEncodedImageData];
                
            }else
            {
                lb21=CGRectMake(310,12,99,100);
                flag=0;
                img1=[UIImage imageNamed:@"photo_icon.png"];
                
            } 
            
            
            
            image20.image=img1;
            if(flag==1)
            {
               image20.frame=CGRectMake(47,15, 100,122);
                
                
            }else
            {
                
           
            image20.frame=CGRectMake((myview.frame.size.width-img1.size.width)/2, 15, img1.size.width, img1.size.height);
            }
            [self.myview addSubview:image20];
            NSUserDefaults *name1 = [NSUserDefaults standardUserDefaults];
            pname=[name1  objectForKey:@"text"];
   
            NSDate* date = [NSDate date];
            NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
            [formatter setDateFormat:@"dd MMM yyyy"];
            NSString *stringFromDate = [formatter stringFromDate:date];
            [formatter release];
            
            NSLog(@"%@", stringFromDate);
            
            lable1.frame=CGRectMake(0, 270, 480, 50);
            NSLog(@"Name for long version %@",pname);
            if(stringFromDate.length!=0&&pname.length!=0&&![pname isEqualToString:@"(null)"]&&![pname isEqualToString:@"..."])
            {
                NSLog(@"Length %d",pname.length);
                if(pname.length<=3 )
                {
                
[lable1 setTitle:[NSString stringWithFormat: @" Secondly I sent %@ on %@ to tell you why              I died on the cross and how you could be forgiven.",pname,stringFromDate] forState:UIControlStateNormal];
                }
              
                if(pname.length>3&&pname.length<=6)
                {
                 [lable1 setTitle:[NSString stringWithFormat: @"Secondly I sent %@ on %@ to tell you why                     I died on the cross and how you could be forgiven.",pname,stringFromDate] forState:UIControlStateNormal];   
                }
                if(pname.length>6&&pname.length<=15)
                {
                lable1.titleLabel.numberOfLines=3;
                lable1.frame=CGRectMake(0, 258, 480, 62);
          
[lable1 setTitle:[NSString stringWithFormat: @"  Secondly I sent %@ on %@                                 to tell you why I died on the cross and how you                            could be forgiven.",pname,stringFromDate] forState:UIControlStateNormal];   
                }

            }else
            {[lable1 setTitle:[NSString stringWithFormat: @"    Secondly I sent %@ on %@ to tell you why                                I died on the cross and how you could be forgiven.",pname,stringFromDate] forState:UIControlStateNormal]; 
                
            }
 
            longval2=6;
            
            break;
        case 6: image20.hidden=YES;
                image21=[UIImageView new];
            UIImage *img2=[UIImage imageNamed:@"consince1.png"];
            lable1.titleLabel.font= [UIFont fontWithName:@"Opificio" size:17.f];
            image21.image=img2;
            image21.frame=CGRectMake((myview.frame.size.width-img2.size.width)/2, 15, img2.size.width, img2.size.height);
           
            [self.myview addSubview:image21];
            lable1.frame=CGRectMake(0, 270, 480, 50);
            [lable1 setTitle:@"      Thirdly, I gave you a conscience so that you would          know right from wrong." forState:UIControlStateNormal]; 
            longval2=7;
            
            break;
        case 7:image21.hidden=YES;
            image22=[UIImageView new];
            UIImage *img3=[UIImage imageNamed:@"page-36-church-icon-1.png"];
            
            image22.image=img3;
            image22.frame=CGRectMake((myview.frame.size.width-img3.size.width)/2, 15, img3.size.width, img3.size.height);
            [self.myview addSubview:image22];
            [lable1 setTitle:@"     Fourthly, there were some good churches in the area      where you lived." forState:UIControlStateNormal]; 
            longval2=8;
            
            break;
        case 8:lable1.frame=CGRectMake(0, 270, 480, 50);
            [lable1 setTitle:@"You could have found out about Me at one of them." forState:UIControlStateNormal];  
            longval2=9;
            
            break;
        case 9:image22.hidden=YES;
            [self callglobeimage];
            lable1.frame=CGRectMake(0, 270, 480, 50);
            [lable1 setTitle:@"Fifthly I created a world so beautiful that it was impossible not to know that I was there." forState:UIControlStateNormal];  
            longval2=10;
            
            break;
        case 10:image23.hidden=YES;
                 image24=[UIImageView new];
            UIImage *img4=[UIImage imageNamed:@"jesus_white_icon2.png"];
            
            image24.image=img4;
            image24.frame=CGRectMake((myview.frame.size.width-img4.size.width)/2, -50, img4.size.width, img4.size.height);
            [self.myview addSubview:image24];
            [lable1 setTitle:@"And finally, I rose from the dead to prove that I was God and that everything I said in the Bible was true." forState:UIControlStateNormal];   
            longval2=11;
            
            break;
        case 11:
            image24.hidden=YES;
            [self calljesusanimation];
            
            lable1.frame=CGRectMake(0, 270, 480, 50);
            [lable1 setTitle:@"Yet, you just did nothing." forState:UIControlStateNormal];  
            longval2=12;
            
            break;
        case 12:
            image24.hidden=YES;
            lable4.hidden=NO;
            image12.hidden=NO;
            lable4.text=@" I’m sorry I can’t let you into Heaven";
            [lable1 setTitle:@"I’m sorry I can’t let you into Heaven" forState:UIControlStateNormal];

            longval2=13;
            
            break;
        case 13:lable4.text=@"I have to send you to Hell.";
            [lable1 setTitle:@"I have to send you to Hell." forState:UIControlStateNormal]; 
 
            longval2=14;
            
            break;
        case 14:
            image11.hidden=YES;
            [self callbodyinhell];
            lable4.hidden=YES;
            image12.hidden=YES;
            longval2=15;
            
            break;
        */
        case 4:image4.hidden=YES;
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
            
            long3 *ta=[[long3 alloc]initWithNibName:@"long3" bundle:[NSBundle mainBundle]];            [self.navigationController pushViewController:ta animated:NO];
            [ta release];
            break;

            




 
    }
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

-(IBAction)gobackview:(id)sender
{
    longnext *backview=[[longnext alloc]initWithNibName:@"longnext" bundle:nil];
    self.navigationController.viewControllers=[NSArray arrayWithObjects:backview, nil];
    
    [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:0] animated:YES];
}
-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
    image11.hidden=NO;
    longval2=1;    
    
}
-(void)longTap
{
    NSLog(@"Long Press");
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
