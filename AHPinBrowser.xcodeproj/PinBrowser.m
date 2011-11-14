//  PROGRAMMER(S):  Andrew HoChoy
//  PANTHERID:      1569034
//  CLASS:          COP 4655
//  INSTRUCTOR:     Steven Luis ECS 282
//  ASSIGNMENT:     #5 Pin Browser
//  DUE:            Thursday 11/10

#import "PinBrowser.h"

@implementation PinBrowser

@synthesize pinDictionary;

-(id)init
{
    if (self = [super init])
    {
        //Initates the dictionary with a sample set of Pin/URL combos
        self.pinDictionary = [NSMutableDictionary dictionaryWithObjectsAndKeys:
                              [NSURL URLWithString:@"http://www.google.com"], @"1234", 
                              [NSURL URLWithString:@"http://www.apple.com"], @"1984",
                              [NSURL URLWithString:@"http://www.fiu.edu"], @"2011",nil];
    }
    return self;
}

-(BOOL)isValidPin:(NSString *)pin{
    
    return [[pinDictionary allKeys] containsObject: pin];    
}

-(NSURL*)retrieveUrlFromPin:(NSString *)pin{
    
    return [pinDictionary objectForKey:pin];
}

-(void)saveComboToDictionaryPin:(NSString*)pin andURL:(NSURL*)url{
    
    [pinDictionary setObject:url forKey:pin];
    
}

@end
