//
//  NoticeDetailViewController.m
//  CSE BUET
//
//  Created by Ashiq uz Zoha on 11/23/13.
//  Copyright (c) 2013 BUET. All rights reserved.
//

#import "NoticeDetailViewController.h"

@interface NoticeDetailViewController ()

@end

@implementation NoticeDetailViewController

@synthesize Details , DetailsTitle ;

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
    self.title = DetailsTitle ;
    Details.text = @"Details of the notice..." ;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
