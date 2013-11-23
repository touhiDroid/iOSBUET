//
//  NoticeViewController.h
//  CSE BUET
//
//  Created by Ashiq uz Zoha on 11/22/13.
//  Copyright (c) 2013 BUET. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NoticeViewController : UIViewController <UITableViewDataSource , UITableViewDelegate >

@property (nonatomic , strong) IBOutlet UITableView *myTableView ;

@end
