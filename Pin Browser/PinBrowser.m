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
        
        self.pinDictionary = [[NSMutableDictionary  alloc] initWithObjectsAndKeys: 
                              [NSURL URLWithString:@"http://www.google.com"], @"1234",
                              [NSURL URLWithString:@"http://www.apple.com"], @"1986",
                              [NSURL URLWithString:@"http://www.fiu.edu"], @"1965", 
                              nil];
    }
    
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

-(NSInteger)pinCount{
    
    return [pinDictionary count];

}


-(NSString *)pinAtIndex:(NSInteger)idx{

    return [[pinDictionary allKeys] objectAtIndex:idx];

}
    
-(NSURL *)URLatIndex:(NSInteger)idx{
    
    return [[pinDictionary allValues] objectAtIndex:idx];
}
@end
