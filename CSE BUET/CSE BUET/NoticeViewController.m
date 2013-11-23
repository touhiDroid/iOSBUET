//
//  NoticeViewController.m
//  CSE BUET
//
//  Created by Ashiq uz Zoha on 11/22/13.
//  Copyright (c) 2013 BUET. All rights reserved.
//

#import "NoticeViewController.h"
#import "NoticeCell.h"
#import "NoticeDetailViewController.h"

@interface NoticeViewController ()

@end

@implementation NoticeViewController {
    NSMutableArray *Titles ;
    NSMutableArray *Dates ;
}
@synthesize myTableView ;

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
    self.title = @"Notice Board" ;
    
    Titles = [[NSMutableArray alloc]init];
    Dates = [[NSMutableArray alloc]init];
    
    [Titles addObject:@"iOS Workshop"];
    [Titles addObject:@"Windows Workshop"];
    [Titles addObject:@"Android Workshop"];
    [Titles addObject:@"Cloud Computing Workshop"];
    [Titles addObject:@"Research Proposal Wanted"];
    [Titles addObject:@"Vacancy Notice"];
    [Titles addObject:@"Notice 1"];
    [Titles addObject:@"Notice 2"];
    [Titles addObject:@"Notice 3"];
    [Titles addObject:@"Notice 4"];
    [Titles addObject:@"Notice 5"];
    [Titles addObject:@"Notice 6"];
    [Titles addObject:@"Notice 7"];
    [Titles addObject:@"Notice 8"];
    [Titles addObject:@"Notice 9"];
    
    [Dates addObject:@"20 November 2013"];
    [Dates addObject:@"23 November 2013"];
    [Dates addObject:@"1 Jan 2014"];
    [Dates addObject:@"1 Jan 2014"];
    [Dates addObject:@"1 Jan 2014"];
    [Dates addObject:@"1 Jan 2014"];
    [Dates addObject:@"1 Jan 2014"];
    [Dates addObject:@"1 Jan 2014"];
    [Dates addObject:@"1 Jan 2014"];
    [Dates addObject:@"1 Jan 2014"];
    [Dates addObject:@"1 Jan 2014"];
    [Dates addObject:@"1 Jan 2014"];
    [Dates addObject:@"1 Jan 2014"];
    [Dates addObject:@"1 Jan 2014"];
    [Dates addObject:@"1 Jan 2014"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;    //count of section
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return [Titles count] ;    //count number of row from counting array hear cataGorry is An Array
}


- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *MyIdentifier = @"cell";
    
    NoticeCell *cell = (NoticeCell*) [tableView dequeueReusableCellWithIdentifier:MyIdentifier];
    
    if (cell == nil)
    {
        NSArray *nibs = [[NSBundle mainBundle] loadNibNamed:@"NoticeCell" owner:self options:nil];
        cell = [nibs objectAtIndex:0];
    }
    
    cell.NoticeTitle.text = [Titles objectAtIndex:indexPath.row];
    cell.NoticeDate.text = [Dates objectAtIndex:indexPath.row];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NoticeDetailViewController *controller = [[NoticeDetailViewController alloc]initWithNibName:@"NoticeDetailViewController" bundle:nil];
    controller.DetailsTitle = [Titles objectAtIndex:indexPath.row];
    self.navigationItem.backBarButtonItem =
    [[UIBarButtonItem alloc] initWithTitle:@"Back"
                                     style:UIBarButtonItemStyleBordered
                                    target:nil
                                    action:nil];
    [self.navigationController pushViewController:controller animated:YES];
}

@end
