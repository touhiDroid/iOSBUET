//
//  MasterViewController.m
//  GetStarted
//
//  Created by Ashiq uz Zoha on 11/21/13.
//  Copyright (c) 2013 Ayon. All rights reserved.
//

#import "MasterViewController.h"

@interface MasterViewController ()

@end

@implementation MasterViewController

@synthesize MyLabel ;

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
    self.title = NSLocalizedString(@"a", nil);
    
    MyArray = [[NSMutableArray alloc]init];
    [MyArray addObject:@"Bangladesh"] ;
    [MyArray addObject:@"Australia"] ;
    [MyArray addObject:@"South Africa"] ;
    [MyArray addObject:@"Newzeland"] ;
    [MyArray addObject:@"England"] ;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction) onClickMyButton : (id) sender {

    int index = arc4random() % [MyArray count] ;
    MyLabel.text = [MyArray objectAtIndex:index];
}

@end













