//  PROGRAMMER(S):  Andrew HoChoy
//  PANTHERID:      1569034
//  CLASS:          COP 4655
//  INSTRUCTOR:     Steven Luis ECS 282
//  ASSIGNMENT:     #5 Pin Browser
//  DUE:            Thursday 11/10

#import <Foundation/Foundation.h>

@interface PinBrowser : NSObject {
    
    NSMutableDictionary *pinDictionary;
    
}

@property (nonatomic, retain) NSMutableDictionary *pinDictionary;

-(id)init;
-(BOOL)isValidPin:(NSString *)pin; //Checks to see if PIN provided is currently in Dictionary
-(NSURL*)retrieveUrlFromPin:(NSString *)pin;  // Retrieves the URL of the Provided Pin
-(void)saveComboToDictionaryPin:(NSString*)pin andURL:(NSURL*)url; // Adds a Pin/URL combo to the Dictionary

@end
