//
//  FacultyViewController.m
//  CSE BUET
//
//  Created by Ashiq uz Zoha on 11/22/13.
//  Copyright (c) 2013 BUET. All rights reserved.
//

#import "FacultyViewController.h"
#import "FacultyCell.h"
#import "SVHTTPRequest.h"
#import <objc/runtime.h>
#import "SVProgressHUD.h"
#import "MyUtil.h"

@interface FacultyViewController ()

@end

@implementation FacultyViewController {
    NSMutableArray *TableDataArray ;
}

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"Faculty Members" ;
    
    TableDataArray = [[NSMutableArray alloc]init];
    [self DownloadFacultydata];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1 ;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [TableDataArray count] ;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    FacultyCell *cell = (FacultyCell*)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        NSArray *nibs = [[NSBundle mainBundle] loadNibNamed:@"FacultyCell" owner:self options:nil];
        cell = [nibs objectAtIndex:0];
    }
    
    NSDictionary *celldata = [TableDataArray objectAtIndex:indexPath.row];
    
    cell.Name.text = [celldata objectForKey:@"name"] ;
    cell.Designation.text = [celldata objectForKey:@"designation"] ;
    cell.Interest.text = [celldata objectForKey:@"research_area"];
    
    NSURL *url = [NSURL URLWithString:[celldata objectForKey:@"image_link"]];
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc]initWithURL:url];
    [MyUtil downloadImageWithURL:request completionBlock:^(BOOL succeeded, UIImage *image) {
        if(succeeded){
            cell.Photo.image = image ;
        } else{
            cell.Photo.image = [UIImage imageNamed:@"no_photo_male.jpg"] ;
        }
    }];
    
    return cell;
}




- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
}
 
- (void) DownloadFacultydata {
    
    [SVProgressHUD show];
    SVHTTPRequest *request = [[SVHTTPRequest alloc] initWithAddress:@"http://shourav.com/cse-buet/get_teachers_info.php"
                 method:SVHTTPRequestMethodGET
            parameters:nil
            completion:^(id response, NSHTTPURLResponse *urlResponse, NSError *error) {
                
                [SVProgressHUD dismiss];
    int status = urlResponse.statusCode ;
    NSLog(@"Status Code : %d" , status);
    if(status == 200){
        NSLog(@"Response type : %@" , NSStringFromClass([response class]));
         NSArray *array = [NSJSONSerialization JSONObjectWithData:response options:kNilOptions error:&error];
        NSLog(@"Response : %@" , response);
         [self LoadData:array];
    }
    
    if(error){
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Error"
                                                       message:error.localizedDescription
                                                      delegate:self
                                             cancelButtonTitle:@"Close"
                                             otherButtonTitles:nil, nil];
        [alert show];
    }
}];
    [request start];
}

- (void) LoadData : (NSArray*) data {
    
    if(data){
        for(NSDictionary *dic in data){
            [TableDataArray addObject:dic];
        }
    }
    
    [self.tableView reloadData];
}

@end
