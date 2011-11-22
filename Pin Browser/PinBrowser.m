//
//  PinBrowser.m
//  AHPinBrowser
//
//  Created by Andrew HoChoy on 11/21/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "PinBrowser.h"

@implementation PinBrowser

@synthesize pinDictionary;

-(id)init{
    
    return self;
}

-(BOOL)isValidPin:(NSString *)pin{
    
    
    NSArray *keys = [pinDictionary allKeys];
    
    return [keys containsObject: pin];
    
    
}

-(NSURL *)URLforPin:(NSString *)pin{
    
    return [pinDictionary objectForKey:pin];
    
}

-(void)addPin:(NSString *)pin andURL:(NSURL *)url{
    
    [pinDictionary setObject:url forKey:pin];
    
}

@end
