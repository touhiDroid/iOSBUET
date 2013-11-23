//
//  HomeViewController.m
//  CSE BUET
//
//  Created by Ashiq uz Zoha on 11/22/13.
//  Copyright (c) 2013 BUET. All rights reserved.
//

#import "HomeViewController.h"
#import "NoticeViewController.h"
#import "AboutViewController.h"
#import "AdmissionViewController.h"
#import "FacultyViewController.h"
#import "WensiteViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

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
    self.title = @"CSE BUET" ;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction) onClickNoticeButton :(id)sender {
    NSLog(@"Notice Button Clicked");
    
    NoticeViewController *noticeViewController = [[NoticeViewController alloc] initWithNibName:@"NoticeViewController" bundle:nil];
    
    self.navigationItem.backBarButtonItem =
    [[UIBarButtonItem alloc] initWithTitle:@"Back"
                                      style:UIBarButtonItemStyleBordered
                                     target:nil
                                     action:nil];
    
    [self.navigationController pushViewController:noticeViewController animated:YES];
    
}

- (IBAction) onClickAboutButton :(id)sender {
    
    AboutViewController *aboutViewController = [[AboutViewController alloc] initWithNibName:@"AboutViewController" bundle:nil];
    
    self.navigationItem.backBarButtonItem =
    [[UIBarButtonItem alloc] initWithTitle:@"Back"
                                     style:UIBarButtonItemStyleBordered
                                    target:nil
                                    action:nil];
    
    [self.navigationController pushViewController:aboutViewController animated:YES];
}


- (IBAction) onClickAdmissionButton :(id)sender {
    
    AdmissionViewController *admissionViewController = [[AdmissionViewController alloc] initWithNibName:@"AdmissionViewController" bundle:nil];
    
    self.navigationItem.backBarButtonItem =
    [[UIBarButtonItem alloc] initWithTitle:@"Back"
                                     style:UIBarButtonItemStyleBordered
                                    target:nil
                                    action:nil];
    
    [self.navigationController pushViewController:admissionViewController animated:YES];
}


- (IBAction) onClickfacultyButton :(id)sender {

    FacultyViewController *facultyViewController = [[FacultyViewController alloc] initWithNibName:@"FacultyViewController" bundle:nil];
    
    self.navigationItem.backBarButtonItem =
    [[UIBarButtonItem alloc] initWithTitle:@"Back"
                                     style:UIBarButtonItemStyleBordered
                                    target:nil
                                    action:nil];
    
    [self.navigationController pushViewController:facultyViewController animated:YES];
}

- (IBAction) onClickWebsiteButton :(id)sender {
    WensiteViewController *webViewController = [[WensiteViewController alloc] initWithNibName:@"WensiteViewController" bundle:nil];
    
    self.navigationItem.backBarButtonItem =
    [[UIBarButtonItem alloc] initWithTitle:@"Back"
                                     style:UIBarButtonItemStyleBordered
                                    target:nil
                                    action:nil];
    
    [self.navigationController pushViewController:webViewController animated:YES];
}






@end
