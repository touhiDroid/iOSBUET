//
//  FacultyCell.h
//  CSE BUET
//
//  Created by Ashiq uz Zoha on 11/22/13.
//  Copyright (c) 2013 BUET. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FacultyCell : UITableViewCell

@property (nonatomic , weak) IBOutlet UIImageView *Photo ;
@property (nonatomic , weak) IBOutlet UILabel *Name ;
@property (nonatomic , weak) IBOutlet UILabel *Designation ;
@property (nonatomic , weak) IBOutlet UILabel *Interest ;

@end
