//
//  MyUtil.h
//  Golistica
//
//  Created by Ashiq uz Zoha on 8/19/13.
//  Copyright (c) 2013 IScorer. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyUtil : NSObject


+ (void)downloadImageWithURL:(NSMutableURLRequest *)request completionBlock:(void (^)(BOOL succeeded, UIImage *image))completionBlock ;
+ (void) ShowAlert : (NSString*) title : (NSString*) message ;
+ (void) FixStatusBar : (UIWindow*) window ;
+ (BOOL) NSStringIsValidEmail:(NSString *)checkString ;

@end
