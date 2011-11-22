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
    
    self = [super init];
    
    if(self){
        
        //Initiating Pin Dictionary with some default values
        self.pinDictionary = [[NSMutableDictionary  alloc] initWithObjectsAndKeys: 
                              [NSURL URLWithString:@"http://www.google.com"], @"1234",
                              [NSURL URLWithString:@"http://www.apple.com"], @"1984",
                              [NSURL URLWithString:@"http://www.fiu.edu"], @"1965", 
                              nil];
    }
    
    return self;
}

//Checks to see if provided pin is a valid pin
-(BOOL)isValidPin:(NSString *)pin{
    
    NSArray *keys = [pinDictionary allKeys];
    return [keys containsObject: pin];
    
    
}

//Returns URL for the provided pin
-(NSURL *)URLforPin:(NSString *)pin{
    
    return [pinDictionary objectForKey:pin];
    
}

//Adds the given Pin and URL combo to the dictionary
-(void)addPin:(NSString *)pin andURL:(NSURL *)url{
    
    [pinDictionary setObject:url forKey:pin];
    
}

//Returns the current pin count
-(NSInteger)pinCount{
    
    return [pinDictionary count];

}

//Returns the pin at the given index
-(NSString *)pinAtIndex:(NSInteger)idx{

    return [[pinDictionary allKeys] objectAtIndex:idx];

}

//Returns the URL at the given index
-(NSURL *)URLatIndex:(NSInteger)idx{
    
    return [[pinDictionary allValues] objectAtIndex:idx];
}
@end
