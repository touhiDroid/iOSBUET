//
//  AZImageCache.m
//  Golistica
//
//  Created by Ashiq uz Zoha on 9/12/13.
//  Copyright (c) 2013 IScorer. All rights reserved.
//

#import "AZImageCache.h"

@implementation AZImageCache

@synthesize imgCache;

#pragma mark - Methods

static AZImageCache* sharedImageCache = nil;

+(AZImageCache*)sharedImageCache
{
    @synchronized([AZImageCache class])
    {
        if (!sharedImageCache)
            sharedImageCache= [[self alloc] init];
        
        return sharedImageCache;
    }
    
    return nil;
}

+(id)alloc
{
    @synchronized([AZImageCache class])
    {
        NSAssert(sharedImageCache == nil, @"Attempted to allocate a second instance of a singleton.");
        sharedImageCache = [super alloc];
        
        return sharedImageCache;
    }
    
    return nil;
}

-(id)init
{
    self = [super init];
    if (self != nil)
    {
        imgCache = [[NSCache alloc] init];
    }
    
    return self;
}

- (void) AddImage:(NSString *)imageURL: (UIImage *)image;
{
    [imgCache setObject:image forKey:imageURL];
}

- (NSString*) GetImage:(NSString *)imageURL
{
    return [imgCache objectForKey:imageURL];
}

- (BOOL) DoesExist:(NSString *)imageURL
{
    if ([imgCache objectForKey:imageURL] == nil)
    {
        return false;
    }
    
    return true;
}




@end
