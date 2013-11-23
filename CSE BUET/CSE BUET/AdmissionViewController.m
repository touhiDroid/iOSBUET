//
//  AdmissionViewController.m
//  CSE BUET
//
//  Created by Ashiq uz Zoha on 11/22/13.
//  Copyright (c) 2013 BUET. All rights reserved.
//

#import "AdmissionViewController.h"

@interface AdmissionViewController ()

@end

@implementation AdmissionViewController {
    NSString *undergradInfo ;
    NSString *postgradInfo ;
}

@synthesize myTextView , segmentedControl ;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"Admission" ;
    
    undergradInfo = @"This is undergraduate admisssion information";
    postgradInfo = @"This is post-graduate admisssion information";
    
    myTextView.text = undergradInfo ;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction) onSegmentChanged :(id)sender {
    NSLog(@"Segment Changed");
    int index = [segmentedControl selectedSegmentIndex];
    NSLog(@"Currently Selected Index : %d" , index);
    if(index == 0){
        myTextView.text = undergradInfo ;
    } else{
        myTextView.text = postgradInfo ;
    }
}

@end
