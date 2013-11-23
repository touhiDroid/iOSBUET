//
//  MyUtil.m
//  Golistica
//
//  Created by Ashiq uz Zoha on 8/19/13.
//  Copyright (c) 2013 iOS Workshop. All rights reserved.
//

#import "MyUtil.h"
#import "AZImageCache.h"

@implementation MyUtil


+ (void)downloadImageWithURL:(NSMutableURLRequest *)request completionBlock:(void (^)(BOOL succeeded, UIImage *image))completionBlock
{
    UIImage *image ;
    NSString *URLString = [[request URL] absoluteString];
    NSLog(@"URL String For Image : %@" , URLString);
    if ([[AZImageCache sharedImageCache] DoesExist:URLString] == true) {
        image = [[AZImageCache sharedImageCache] GetImage:URLString];
        NSLog(@"Image in cache , so return");
        completionBlock(YES , image);
    } else {
    NSLog(@"Image not in cache , so download");
    [NSURLConnection sendAsynchronousRequest:request
                                       queue:[NSOperationQueue mainQueue]
                           completionHandler:^(NSURLResponse *response, NSData *data, NSError *error) {
                               
                               NSHTTPURLResponse* httpResponse = (NSHTTPURLResponse*)response;
                               int statusCode = httpResponse.statusCode ;
                               NSLog(@"Status Code Imageloading : %d" , statusCode);
                               
                               if(statusCode == 200){
                                   UIImage *image = [[UIImage alloc] initWithData:data];
                                   NSLog(@"Success");
                                   [[AZImageCache sharedImageCache] AddImage:URLString :image];
                                   completionBlock(YES,image);
                               } else {
                                   NSLog(@"Failure");
                                   completionBlock(NO,nil);
                               }
                           }];
    }
}

+ (void) ShowAlert : (NSString*) title : (NSString*) message {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:title
                                                    message:message
                                                   delegate:self
                                          cancelButtonTitle:@"Close" otherButtonTitles:nil, nil];
    [alert show];
}

+ (void) FixStatusBar : (UIWindow*) window {
    if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 7.0) {
        UIView *addStatusBar = [[UIView alloc] init];
        addStatusBar.frame = CGRectMake(0, 0, 320, 20);
        addStatusBar.backgroundColor = [UIColor colorWithRed:0.973 green:0.973 blue:0.973 alpha:1]; //change this to match your navigation bar
        [window.rootViewController.view addSubview:addStatusBar];
    }

}

+ (BOOL) NSStringIsValidEmail:(NSString *)checkString
{
    BOOL stricterFilter = YES;
    NSString *stricterFilterString = @"[A-Z0-9a-z\\._%+-]+@([A-Za-z0-9-]+\\.)+[A-Za-z]{2,4}";
    NSString *laxString = @".+@([A-Za-z0-9]+\\.)+[A-Za-z]{2}[A-Za-z]*";
    NSString *emailRegex = stricterFilter ? stricterFilterString : laxString;
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
    return [emailTest evaluateWithObject:checkString];
}

@end
