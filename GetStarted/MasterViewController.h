//
//  MasterViewController.h
//  GetStarted
//
//  Created by Ashiq uz Zoha on 11/21/13.
//  Copyright (c) 2013 Ayon. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MasterViewController : UIViewController {
    NSMutableArray *MyArray ;
}

@property (nonatomic , strong) IBOutlet UILabel *MyLabel ;

- (IBAction) onClickMyButton : (id) sender ;

@end
