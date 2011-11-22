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

-(BOOL)isValidPin:(NSString *)pin;
-(NSURL *)URLforPin:(NSString *)pin;
-(void)addPin:(NSString *)pin andURL:(NSURL *)url;
-(NSInteger) pinCount;
-(NSString *)pinAtIndex:(NSInteger)idx;
-(NSURL *)URLatIndex:(NSInteger)idx;

@end
