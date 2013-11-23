//
//  AZImageCache.h
//  Golistica
//
//  Created by Ashiq uz Zoha on 9/12/13.
//  Copyright (c) 2013 IScorer. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AZImageCache : NSObject

@property (nonatomic, retain) NSCache *imgCache;


#pragma mark - Methods

+ (AZImageCache*)sharedImageCache;
- (void) AddImage:(NSString *)imageURL: (UIImage *)image;
- (UIImage*) GetImage:(NSString *)imageURL;
- (BOOL) DoesExist:(NSString *)imageURL;


@end
