//
//  AdmissionViewController.h
//  CSE BUET
//
//  Created by Ashiq uz Zoha on 11/22/13.
//  Copyright (c) 2013 BUET. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AdmissionViewController : UIViewController

@property (nonatomic , strong) IBOutlet UITextView *myTextView ;
@property (nonatomic , strong) IBOutlet UISegmentedControl *segmentedControl ;

- (IBAction) onSegmentChanged :(id)sender ;

@end
